import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';
import 'package:payment_checkout/models/custom_checkout_model.dart';
import 'package:payment_checkout/widgets/custom_appbar.dart';
import 'package:payment_checkout/widgets/custom_barcode_row.dart';
import 'package:payment_checkout/widgets/custom_card_info.dart';
import 'package:payment_checkout/widgets/custom_check_icon.dart';
import 'package:payment_checkout/widgets/custom_checkout_row.dart';
import 'package:payment_checkout/widgets/custom_divider.dart';
import 'package:payment_checkout/widgets/custom_side_circle.dart';
import 'package:payment_checkout/widgets/custom_thankyou_textrow.dart';
import 'package:payment_checkout/widgets/dashed_border.dart';

class ThankyouView extends StatelessWidget {
  const ThankyouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(
          title: " ",
          onPressed: () {
            Navigator.maybePop(context);
          }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 50),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xffEDEDED),
                  borderRadius: BorderRadius.circular(32)),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    const Text(
                      "Thank you",
                      style: Styles.style25,
                    ),
                    Text(
                      "Your transaction was successful",
                      style: Styles.style20,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const CustomThankyouTextrow(
                        boldText: "Date", normalText: "01/24/2023"),
                    const CustomThankyouTextrow(
                        boldText: "Time", normalText: "10:15 AM"),
                    const CustomThankyouTextrow(
                        boldText: "To", normalText: "Sam Louis"),
                    const CustomDivider(),
                    const CustomCheckoutRow(
                        checkoutModel: CustomCheckoutModel(
                            service: "Total",
                            price: r"$50.97",
                            textStyle: Styles.style24)),
                    const CustomCardInfo(),
                    const Spacer(),
                    const CustomBarcodeRow(),
                    SizedBox(
                        height:
                            ((MediaQuery.of(context).size.height * 0.17 + 20) /
                                    2) -
                                29)
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: MediaQuery.of(context).size.height * 0.17 + 20,
                right: 0,
                left: 0,
                child: const DashedBorder()),
            const CustomSideCircle(null, -20),
            const CustomSideCircle(-20, null),
            Positioned(
              top: -40,
              right: 0,
              left: 0,
              child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color(0xffEDEDED),
                  child: customCheckIcon()),
            ),
          ],
        ),
      ),
    );
  }
}
