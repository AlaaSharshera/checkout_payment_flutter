import 'package:flutter/material.dart';

class CustomChoosepaymentContainer extends StatelessWidget {
  const CustomChoosepaymentContainer(
      {required this.imagePath,
      required this.onTap,
      required this.isActive,
      super.key});
  final String imagePath;
  final VoidCallback onTap;

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        width: 90,
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: isActive ? Colors.green : Colors.white,
              offset: const Offset(2, 1),
              blurRadius: 4,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isActive ? Colors.green : Colors.grey,
          ),
        ),
        child: Image.asset(imagePath),
      ),
    );
  }
}
