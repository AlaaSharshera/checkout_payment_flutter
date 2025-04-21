import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';

class CustomCheckoutModel {
  final String service;
  final String price;
  final TextStyle textStyle;
  const CustomCheckoutModel(
      {required this.service, required this.price, required this.textStyle});
}

List<CustomCheckoutModel> customCheckoutList = const [
  CustomCheckoutModel(
      service: "Order Subtotal", price: "\$42.97", textStyle: Styles.style18),
  CustomCheckoutModel(
      service: "Discount", price: "\$0", textStyle: Styles.style18),
  CustomCheckoutModel(
      service: "Shipping", price: r"$8", textStyle: Styles.style18)
];
