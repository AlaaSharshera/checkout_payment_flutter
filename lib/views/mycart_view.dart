import 'package:flutter/material.dart';
import 'package:payment_checkout/widgets/custom_appbar.dart';

class MycartView extends StatelessWidget {
  const MycartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "My Cart"),
    );
  }
}
