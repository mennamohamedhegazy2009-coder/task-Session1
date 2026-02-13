
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';
import 'package:flutter_application_1/core/constants/app_images.dart';
import 'package:flutter_application_1/core/networking/dio_helper.dart';
import 'package:flutter_application_1/features/gold/data/repo/silver_repo.dart';
import 'package:flutter_application_1/features/gold/peresentaion/cubit/silver_cubit.dart';
import 'package:flutter_application_1/features/gold/peresentaion/cubit/silver_states.dart';
import 'package:flutter_application_1/features/gold/peresentaion/screens/widgets/custom_widget_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit(silverRepo: SilverRepo())..getSilver(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Silver',
            style: TextStyle(
              color: AppColors.silverColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocBuilder<SilverCubit, SilverStates>(
          builder: (context, state) {
            if (state is SilverLoadingState) {
              return const Center(
                child: CircularProgressIndicator(color: AppColors.silverColor),
              );
            } 
            else if (state is SilverErrorState) {
              return Center(
                child: Text(
                  state.error.toString(),
                  style: const TextStyle(color: Colors.red),
                ),
              );
            } 
            else if (state is SilverSuccessState) {
              return Center(
                child: CustomPriceWidget(
                  imagePath: AppImages.SILVER,
                  price: state.silverModel.price.toString(),
                  currency: state.silverModel.symbol.toString(),
                  color: AppColors.silverColor,
                ),
              );
            }
            return const Center(
              child: Text("No Data Available", style: TextStyle(color: Colors.white)),
            );
          },
        ),
      ),
    );
  }
}