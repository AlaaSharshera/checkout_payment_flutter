import 'package:dartz/dartz.dart';
import 'package:payment_checkout/models/payment_intent_input_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentInputModel});
}

abstract class Failure {
  final String errMessgae;

  Failure({required this.errMessgae});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessgae});
}
