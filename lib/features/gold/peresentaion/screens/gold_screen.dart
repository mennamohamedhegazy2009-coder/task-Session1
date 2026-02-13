import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';
import 'package:flutter_application_1/core/constants/app_images.dart';
import 'package:flutter_application_1/features/gold/data/repo/gold_repo.dart';
import 'package:flutter_application_1/features/gold/peresentaion/cubit/gold_cubit.dart';
import 'package:flutter_application_1/features/gold/peresentaion/cubit/gold_states.dart';
import 'package:flutter_application_1/features/gold/peresentaion/screens/widgets/custom_widget_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(goldRepo: GoldRepo())..getGold(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Gold',
            style: TextStyle(
              color: AppColors.goldColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocBuilder<GoldCubit, GoldStates>(
          builder: (context, state) {
            if (state is GoldLoadingState) {
              return const Center(child: CircularProgressIndicator(color: AppColors.goldColor));
            } 
            else if (state is GoldErrorState) {
              return Center(child: Text(state.error, style: const TextStyle(color: Colors.white)));
            } 
            else if (state is GoldSuccessState) {
              return Center(
                child: GoldPriceWidget(
                  imagePath: AppImages.GOLD,
                  price: state.goldModel.price.toString(),
                  currency: state.goldModel.symbol,
                  color: AppColors.goldColor,
                )
                  
              );
              
            }
            return const Center(child: Text("Waiting", style: TextStyle(color: Colors.white)));
          },
        ),
      ),
    );
  }
        
GoldPriceWidget({required String imagePath, required String price, required currency, required Color color}) {
  return CustomPriceWidget(imagePath: imagePath, price: price, currency: currency, color: color);
}
}
