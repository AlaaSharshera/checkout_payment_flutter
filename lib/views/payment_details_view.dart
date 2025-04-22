import 'package:flutter/material.dart';
import 'package:payment_checkout/widgets/custom_appbar.dart';
import 'package:payment_checkout/widgets/custom_choosepayment_container.dart';
import 'package:payment_checkout/widgets/custom_credit_card.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  final List<String> imagePathes = const [
    "assets/images/small_card.png",
    "assets/images/paypal.png",
    "assets/images/apple_pay.png"
  ];
  int itemSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(
          title: "Payment Details",
          onPressed: () {
            Navigator.maybePop(context);
          }),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                    height: 65,
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CustomChoosepaymentContainer(
                            onTap: () {
                              setState(() {
                                itemSelected = index;
                              });
                            },
                            imagePath: imagePathes[index],
                            isActive: itemSelected == index,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 10,
                          );
                        },
                        itemCount: 3)),
              ),
              CustomCreditCard()
            ],
          ),
        ),
      ),
    );
  }
}
