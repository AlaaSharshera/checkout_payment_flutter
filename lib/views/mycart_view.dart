import 'package:flutter/material.dart';
import 'package:payment_checkout/widgets/custom_appbar.dart';
import 'package:payment_checkout/widgets/custom_button.dart';
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
            Image.asset(
              "assets/images/cart.png",
              height: 450,
            ),
            const Spacer(
              flex: 1,
            ),
            customCheckoutRow(service: "Order Subtotal", price: "\$42.97"),
            customCheckoutRow(service: "Discount", price: "\$0"),
            customCheckoutRow(service: "Shipping", price: "\$8"),
            const Spacer(
              flex: 1,
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.black,
              thickness: 0.7,
            ),
            const Spacer(
              flex: 1,
            ),
            customCheckoutRow(
                service: "Total", price: "\$50.97", fw: FontWeight.bold),
            customButton(text: "Complete Payment", onPressed: () {}),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
