import 'package:dartz/dartz.dart';
import 'package:payment_checkout/core/utils/services/stripe_service.dart';
import 'package:payment_checkout/models/payment_intent_input_model.dart';
import 'package:payment_checkout/repos/checkout_repo.dart';

class CheckoutRepoImplementation extends CheckoutRepo {
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentInputModel}) async {
    try {
      StripeService().makePayment(paymentInputModel: paymentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errMessgae: e.toString()));
    }
  }
}
