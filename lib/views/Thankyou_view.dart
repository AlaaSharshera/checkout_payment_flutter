import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';
import 'package:payment_checkout/widgets/custom_appbar.dart';
import 'package:payment_checkout/widgets/custom_check_icon.dart';
import 'package:payment_checkout/widgets/custom_side_circle.dart';
import 'package:payment_checkout/widgets/custom_thankyou_textrow.dart';
import 'package:payment_checkout/widgets/dashed_border.dart';

class ThankyouView extends StatelessWidget {
  const ThankyouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(title: " "),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xffEDEDED),
                  borderRadius: BorderRadius.circular(32)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Thank you",
                    style: Styles.style25,
                  ),
                  Text(
                    "Your transaction was successful",
                    style: Styles.style20,
                  ),
                  const CustomThankyouTextrow(
                      boldText: "Date", normalText: "01/24/2023"),
                  const CustomThankyouTextrow(
                      boldText: "Time", normalText: "10:15 AM"),
                  const CustomThankyouTextrow(
                      boldText: "To", normalText: "Sam Louis"),
                ],
              ),
            ),
            Positioned(
                bottom: MediaQuery.of(context).size.height * 0.25 + 20,
                right: 0,
                left: 0,
                child: const DashedBorder()),
            Positioned(
              top: -40,
              right: 0,
              left: 0,
              child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color(0xffEDEDED),
                  child: customCheckIcon()),
            ),
            const CustomSideCircle(null, -20),
            const CustomSideCircle(-20, null)
          ],
        ),
      ),
    );
  }
}
