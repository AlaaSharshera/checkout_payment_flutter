import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';

class CustomThankyouTextrow extends StatelessWidget {
  const CustomThankyouTextrow(
      {required this.boldText, required this.normalText, super.key});
  final String boldText;
  final String normalText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            boldText,
            style: Styles.style18,
          ),
          Text(
            normalText,
            style: Styles.styleBold18,
          )
        ],
      ),
    );
  }
}
