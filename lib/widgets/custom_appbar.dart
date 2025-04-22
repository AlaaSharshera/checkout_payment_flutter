import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';

PreferredSizeWidget customAppBar(
    {String? title, required VoidCallback onPressed}) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading:
        IconButton(onPressed: onPressed, icon: const Icon(Icons.arrow_back)),
    title: Text(
      title!,
      style: Styles.style25,
    ),
  );
}
