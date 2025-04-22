import 'package:flutter/material.dart';

class CustomSideCircle extends StatelessWidget {
  const CustomSideCircle(this.left, this.right, {super.key});
  final double? left, right;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.17,
      left: left,
      right: right,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}
