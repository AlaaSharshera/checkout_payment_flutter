import 'package:flutter/material.dart';

Widget customChoosePaymentContainer({required String imagePath}) {
  return Container(
    width: 90,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: const Color(0xff000000),
      ),
    ),
    child: Image.asset(imagePath),
  );
}
