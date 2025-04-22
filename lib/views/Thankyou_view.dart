import 'package:flutter/material.dart';
import 'package:payment_checkout/widgets/custom_appbar.dart';
import 'package:payment_checkout/widgets/thankyou_view_body.dart';

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
        body: Transform.translate(
          offset: const Offset(0, -50),
          child: const ThankyouViewBody(),
        ));
  }
}
