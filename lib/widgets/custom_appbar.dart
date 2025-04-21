import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';

PreferredSizeWidget customAppBar({String? title}) {
  return AppBar(
    centerTitle: true,
    leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
    title: Text(
      title!,
      style: Styles.style25,
    ),
  );
}
