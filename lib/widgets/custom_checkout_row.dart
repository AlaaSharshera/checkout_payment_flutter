import 'package:flutter/material.dart';
import 'package:payment_checkout/models/custom_checkout_model.dart';

class CustomCheckoutRow extends StatelessWidget {
  const CustomCheckoutRow({required this.checkoutModel, super.key});
  final CustomCheckoutModel checkoutModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            checkoutModel.service,
            style: checkoutModel.textStyle,
          ),
          Text(
            checkoutModel.price,
            style: checkoutModel.textStyle,
          )
        ],
      ),
    );
  }
}
