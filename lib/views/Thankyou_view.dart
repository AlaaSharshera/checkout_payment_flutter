import 'package:flutter/material.dart';
import 'package:payment_checkout/widgets/custom_appbar.dart';

class ThankyouView extends StatelessWidget {
  const ThankyouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(title: " "),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
            decoration: BoxDecoration(
                color: const Color(0xffEDEDED),
                borderRadius: BorderRadius.circular(32)),
          ),
          Positioned(
            top: 5,
            right: 0,
            left: 0,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: const Color(0xffEDEDED),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: const Color(0xff34A853),
                child: Image.asset(
                  width: 40,
                  'assets/images/ok.png',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.25,
            left: 10,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.25,
            right: 10,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
