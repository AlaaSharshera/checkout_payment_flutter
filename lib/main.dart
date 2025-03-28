import 'package:flutter/material.dart';
import 'package:payment_checkout/views/mycart_view.dart';
import 'package:payment_checkout/views/payment_details_view.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentDetailsView(),
    );
  }
}
