import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_checkout/cubits/payment_cubit/payment_cubit.dart';
import 'package:payment_checkout/cubits/payment_cubit/payment_states.dart';
import 'package:payment_checkout/models/payment_intent_input_model.dart';
import 'package:payment_checkout/views/Thankyou_view.dart';
import 'package:payment_checkout/widgets/custom_button.dart';
import 'package:payment_checkout/widgets/custom_payment_listview.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentStates>(
      listener: (context, state) {
        if (state is PaymentSuccessState) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const ThankyouView();
          }));
        }
        if (state is PaymentFailureState) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      },
      builder: (context, state) {
        return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomPaymentListview(),
                customButton(
                    text: "Continue",
                    onPressed: () {
                      PaymentIntentInputModel paymentIntentInputModel =
                          PaymentIntentInputModel(
                              amount: "100", currency: "usd");
                      context.read<PaymentCubit>().makePayment(
                          paymentInputModel: paymentIntentInputModel);
                    })
              ],
            ));
      },
    );
  }
}
