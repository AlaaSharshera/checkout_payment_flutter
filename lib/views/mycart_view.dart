import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';
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
            customCheckoutRow(
                service: "Order Subtotal",
                price: "\$42.97",
                style: Styles.style18),
            customCheckoutRow(
                service: "Discount", price: "\$0", style: Styles.style18),
            customCheckoutRow(
                service: "Shipping", price: r"$8", style: Styles.style18),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.black,
              height: 40,
              thickness: 0.7,
            ),
            customCheckoutRow(
                service: "Total", price: "\$50.97", style: Styles.style24),
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
