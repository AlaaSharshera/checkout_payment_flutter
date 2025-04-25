import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_checkout/views/mycart_view.dart';

void main() async {
  Stripe.publishableKey =
      "pk_test_51RH2bBIgCCjsMlEkgCPZdYr1Mxu25fvapVo09dkY10KhKQw9YQFIpR9lBNWXqTHVctWMunhL1infFeiS9wY4RX6q00JjSbiuro";
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MycartView(),
    );
  }
}
