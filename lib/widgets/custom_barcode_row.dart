import 'package:flutter/material.dart';

class CustomBarcodeRow extends StatelessWidget {
  const CustomBarcodeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/barcode.png"),
          Container(
            width: 100,
            height: 58,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xff34A853),
                ),
                borderRadius: BorderRadius.circular(16)),
            child: const Text(
              "PAID",
              style: TextStyle(color: Color(0xff34A853), fontSize: 22),
            ),
          )
        ],
      ),
    );
  }
}
