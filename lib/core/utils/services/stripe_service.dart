import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_checkout/core/utils/api_keys.dart';
import 'package:payment_checkout/core/utils/services/api_service.dart';
import 'package:payment_checkout/models/payment_intent_input_model.dart';
import 'package:payment_checkout/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  Future<PaymentIntentModel> createPaymentIntent(
      {required PaymentIntentInputModel paymentInputModel}) async {
    try {
      var response = await ApiService().post(
          url: "https://api.stripe.com/v1/payment_intents",
          token: ApiKeys.secretKey,
          contentType: Headers.formUrlEncodedContentType,
          body: paymentInputModel.toJson());
      if (response.statusCode == 200) {
        return PaymentIntentModel.fromJson(response.data);
      } else {
        throw Exception("something went wrong");
      }
    } catch (e) {
      log(e.toString());

      throw Exception(e.toString());
    }
  }

  Future<void> initPaymentSheet({required paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Alaa',
        paymentIntentClientSecret: paymentIntentClientSecret,
        style: ThemeMode.dark,
      ),
    );
  }

  Future displayPayMentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentInputModel}) async {
    PaymentIntentModel paymentIntentModel =
        await createPaymentIntent(paymentInputModel: paymentInputModel);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentModel.clientSecret);
    await displayPayMentSheet();
  }
}
