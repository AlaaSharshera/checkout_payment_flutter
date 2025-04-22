import 'package:flutter/material.dart';
import 'package:payment_checkout/widgets/custom_button.dart';
import 'package:payment_checkout/widgets/custom_payment_listview.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomPaymentListview(),
            customButton(text: "Continue", onPressed: () {}),
          ],
        ));
  }
}
