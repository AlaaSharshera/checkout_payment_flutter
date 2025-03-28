import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({String? title}) {
  return AppBar(
    centerTitle: true,
    leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
    title: Text(title!),
  );
}
