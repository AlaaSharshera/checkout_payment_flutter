abstract class PaymentStates {}

class PaymentLoadingState extends PaymentStates {}

class PaymentSuccessState extends PaymentStates {}

class PaymentFailureState extends PaymentStates {
  final String errMessage;
  PaymentFailureState(this.errMessage);
}
