import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_checkout/core/utils/styles.dart';
import 'package:payment_checkout/cubits/payment_cubit/payment_cubit.dart';
import 'package:payment_checkout/models/custom_checkout_model.dart';
import 'package:payment_checkout/widgets/custom_appbar.dart';
import 'package:payment_checkout/widgets/custom_bottom_sheet.dart';
import 'package:payment_checkout/widgets/custom_button.dart';
import 'package:payment_checkout/widgets/custom_checkout_row.dart';

class MycartView extends StatelessWidget {
  const MycartView({super.key});
  final CustomCheckoutModel checkoutModel = const CustomCheckoutModel(
      service: "Total", price: "\$50.97", textStyle: Styles.style24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(
          title: "My Cart",
          onPressed: () {
            Navigator.maybePop(context);
          }),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/cart.png",
              height: 450,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: customCheckoutList.length,
                itemBuilder: (context, index) {
                  return CustomCheckoutRow(
                      checkoutModel: customCheckoutList[index]);
                }),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.black,
              height: 40,
              thickness: 0.7,
            ),
            CustomCheckoutRow(checkoutModel: checkoutModel),
            customButton(
                text: "Complete Payment",
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return BlocProvider<PaymentCubit>(
                          create: (context) => PaymentCubit(),
                          child: const CustomBottomSheet(),
                        );
                      });
                }),
          ],
        ),
      ),
    );
  }
}
