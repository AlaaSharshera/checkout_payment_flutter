import 'package:flutter/material.dart';

Widget customCheckoutRow({
  required String service,
  required String price,
  required TextStyle style,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          service,
          style: style,
        ),
        Text(
          price,
          style: style,
        )
      ],
    ),
  );
}
