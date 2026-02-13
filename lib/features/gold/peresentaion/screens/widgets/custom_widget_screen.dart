import 'package:flutter/material.dart';

class CustomPriceWidget extends StatelessWidget {
  final String price;
  final String currency;
  final String imagePath;
  final Color color;

  const CustomPriceWidget({
    super.key,
    required this.price,
    required this.currency,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagePath,
          width: 200,
          height: 250,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$price ",
              style: TextStyle(
                color: color, 
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              currency,
              style: TextStyle(
                color: color, 
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}