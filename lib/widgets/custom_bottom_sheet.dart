import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_checkout/core/utils/api_keys.dart';
import 'package:payment_checkout/cubits/payment_cubit/payment_cubit.dart';
import 'package:payment_checkout/cubits/payment_cubit/payment_states.dart';
import 'package:payment_checkout/models/payment_intent_input_model.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
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
                      // PaymentIntentInputModel paymentIntentInputModel =
                      //     PaymentIntentInputModel(
                      //         amount: "100", currency: "usd");
                      // context.read<PaymentCubit>().makePayment(
                      //     paymentInputModel: paymentIntentInputModel);

                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => PaypalCheckoutView(
                          sandboxMode: true,
                          clientId: ApiKeys.cliendIdPaypal,
                          secretKey: ApiKeys.secretKeyPaypal,
                          transactions: const [
                            {
                              "amount": {
                                "total": '70',
                                "currency": "USD",
                                "details": {
                                  "subtotal": '70',
                                  "shipping": '0',
                                  "shipping_discount": 0
                                }
                              },
                              "description":
                                  "The payment transaction description.",
                              // "payment_options": {
                              //   "allowed_payment_method":
                              //       "INSTANT_FUNDING_SOURCE"
                              // },
                              "item_list": {
                                "items": [
                                  {
                                    "name": "Apple",
                                    "quantity": 4,
                                    "price": '5',
                                    "currency": "USD"
                                  },
                                  {
                                    "name": "Pineapple",
                                    "quantity": 5,
                                    "price": '10',
                                    "currency": "USD"
                                  }
                                ],

                                // shipping address is not required though
                                //   "shipping_address": {
                                //     "recipient_name": "tharwat",
                                //     "line1": "Alexandria",
                                //     "line2": "",
                                //     "city": "Alexandria",
                                //     "country_code": "EG",
                                //     "postal_code": "21505",
                                //     "phone": "+00000000",
                                //     "state": "Alexandria"
                                //  },
                              }
                            }
                          ],
                          note: "Contact us for any questions on your order.",
                          onSuccess: (Map params) async {
                            log("onSuccess: $params");
                            Navigator.pop(context);
                          },
                          onError: (error) {
                            log("onError: $error");
                            Navigator.pop(context);
                          },
                          onCancel: () {
                            log('cancelled:');
                          },
                        ),
                      ));
                    })
              ],
            ));
      },
    );
  }
}
