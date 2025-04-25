import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_checkout/core/utils/services/stripe_service.dart';
import 'package:payment_checkout/cubits/payment_cubit/payment_states.dart';
import 'package:payment_checkout/models/payment_intent_input_model.dart';

class PaymentCubit extends Cubit<PaymentStates> {
  PaymentCubit() : super(PaymentLoadingState());

  Future makePayment(
      {required PaymentIntentInputModel paymentInputModel}) async {
    try {
      await StripeService().makePayment(paymentInputModel: paymentInputModel);
      emit(PaymentSuccessState());
    } catch (e) {
      emit(PaymentFailureState(e.toString()));
    }
  }
}
