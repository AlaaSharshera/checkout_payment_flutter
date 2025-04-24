import 'package:dio/dio.dart';
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
          body: paymentInputModel.toJson());
      if (response.statusCode == 200) {
        return PaymentIntentModel.fromJson(response.data);
      } else {
        throw Exception("something went wrong");
      }
    } on DioException catch (e) {
      throw Exception(e.toString());
    }
  }
}
