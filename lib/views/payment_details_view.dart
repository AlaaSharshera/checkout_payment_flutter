import 'package:flutter/material.dart';
import 'package:payment_checkout/widgets/custom_appbar.dart';
import 'package:payment_checkout/widgets/custom_choosepayment_container.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});
  final List<String> imagePathes = const [
    "assets/images/small_card.png",
    "assets/images/paypal.png",
    "assets/images/apple_pay.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Payment Details"),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
                height: 65,
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CustomChoosepaymentContainer(
                          imagePath: imagePathes[index]);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: 3))
          ],
        ),
      ),
    );
  }
}
