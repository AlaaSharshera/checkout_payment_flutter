import 'package:flutter/material.dart';

class CustomChoosepaymentContainer extends StatelessWidget {
  const CustomChoosepaymentContainer({required this.imagePath, super.key});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 60,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2, 1),
            blurRadius: 2,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xff000000),
        ),
      ),
      child: Image.asset(imagePath),
    );
  }
}
