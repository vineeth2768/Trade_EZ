import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';

class StockTotalWidget extends StatelessWidget {
  const StockTotalWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
                color: kWhiteColor, fontWeight: FontWeight.bold),
          ),
        ),
        const Text(
          " : ",
          style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
                color: kWhiteColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
