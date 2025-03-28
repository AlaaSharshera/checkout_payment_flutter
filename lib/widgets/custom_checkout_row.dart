import 'package:flutter/material.dart';

Widget customCheckoutRow(
    {required String service,
    required String price,
    FontWeight fw = FontWeight.w400}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          service,
          style: TextStyle(fontWeight: fw),
        ),
        Text(price, style: TextStyle(fontWeight: fw))
      ],
    ),
  );
}
