import 'package:flutter/material.dart';
import 'package:payment_checkout/widgets/custom_appbar.dart';
import 'package:payment_checkout/widgets/custom_choosepayment_container.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Payment Details"),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customChoosePaymentContainer(
                    imagePath: "assets/images/small_card.png"),
                customChoosePaymentContainer(
                    imagePath: "assets/images/paypal.png"),
                customChoosePaymentContainer(
                    imagePath: "assets/images/apple_pay.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
