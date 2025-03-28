import 'package:flutter/material.dart';

Widget customCheckoutRow({required String service, required String price}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(service), Text(price)],
    ),
  );
}
