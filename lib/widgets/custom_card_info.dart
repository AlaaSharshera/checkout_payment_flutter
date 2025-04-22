import 'package:flutter/material.dart';

class CustomCardInfo extends StatelessWidget {
  const CustomCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Image.asset("assets/images/mastercard.png"),
          ),
          const Text("Credit Card\nMastercard **78 ")
        ],
      ),
    );
  }
}
