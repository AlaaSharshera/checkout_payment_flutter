import 'package:flutter/material.dart';
import 'package:payment_checkout/widgets/custom_choosepayment_container.dart';

class CustomPaymentListview extends StatefulWidget {
  const CustomPaymentListview({super.key});

  @override
  State<CustomPaymentListview> createState() => _CustomPaymentListviewState();
}

const List<String> imagePathes = [
  "assets/images/small_card.png",
  "assets/images/paypal.png",
  "assets/images/apple_pay.png"
];

int itemSelected = 0;

class _CustomPaymentListviewState extends State<CustomPaymentListview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
