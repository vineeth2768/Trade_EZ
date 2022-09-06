import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';

class PaymentButtonWidget extends StatelessWidget {
  const PaymentButtonWidget({
    Key? key,
    required this.title,
    required this.onPress,
    required this.color,
    required this.height,
  }) : super(key: key);

  final String title;
  final Function() onPress;
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      color: color,
      height: height,
      child: Text(
        title,
        style: const TextStyle(
          color: kWhiteColor,
        ),
      ),
    );
  }
}
