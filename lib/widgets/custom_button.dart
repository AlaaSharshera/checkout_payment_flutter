import 'package:flutter/material.dart';

Widget customButton({required VoidCallback onPressed, required String text}) {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          backgroundColor: const WidgetStatePropertyAll(
            Color(0xff34A853),
          ),
          foregroundColor: const WidgetStatePropertyAll(Colors.black),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    ),
  );
}
