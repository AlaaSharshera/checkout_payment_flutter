import 'package:flutter/material.dart';

Widget customCheckIcon() {
  return const CircleAvatar(
    radius: 30,
    backgroundColor: Color(0xff34A853),
    child: Icon(
      size: 50,
      Icons.check,
      color: Colors.white,
    ),
  );
}
