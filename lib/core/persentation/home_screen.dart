import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';
import 'package:flutter_application_1/core/constants/app_string.dart';
import 'package:flutter_application_1/core/widgets/custom_button.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        CustomButton( text:APPStrings.gold,onPressed: (){}, color: AppColors.goldColor),
        SizedBox(height: 15),
        CustomButton( text:APPStrings.silver,onPressed: (){}, color: AppColors.silverColor),
      ]
      ),
    );
  }
}