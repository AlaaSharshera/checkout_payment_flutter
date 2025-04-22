import 'package:flutter/material.dart';

class DashedBorder extends StatelessWidget {
  const DashedBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(32, (index) {
        return Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            height: 2,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(1)),
          ),
        );
      }),
    );
  }
}
