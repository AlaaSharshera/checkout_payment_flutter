import 'package:flutter/material.dart';
import 'package:payment_checkout/widgets/custom_appbar.dart';
import 'package:payment_checkout/widgets/custom_checkout_row.dart';

class MycartView extends StatelessWidget {
  const MycartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "My Cart"),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/cart.png"),
            customCheckoutRow(service: "Order Subtotal", price: "\$42.97"),
            customCheckoutRow(service: "Discount", price: "\$0"),
            customCheckoutRow(service: "Shipping", price: "\$8")
          ],
        ),
      ),
    );
  }
}
