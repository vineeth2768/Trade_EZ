import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/widgets/row_custom_text.dart';

class ScreenSales extends StatelessWidget {
  const ScreenSales({
    super.key,
    required this.index,
    required this.name,
  });

  final int index;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sale ${index + 1}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: const [
                    RowCustomTextWidget(title: "Date", values: "21-06-2022"),
                    kHeight15,
                    RowCustomTextWidget(title: "Customer", values: "Suppler"),
                    kHeight15,
                    RowCustomTextWidget(title: "Biller", values: "Vipin"),
                    kHeight15,
                    RowCustomTextWidget(title: "Grand Total", values: "75485"),
                    kHeight15,
                    RowCustomTextWidget(title: "Paid", values: "6500"),
                    kHeight15,
                    RowCustomTextWidget(title: "Balance", values: "4851"),
                    kHeight15,
                    RowCustomTextWidget(
                        title: "Sales Status", values: "Completed"),
                    kHeight15,
                    RowCustomTextWidget(title: "Payment Status", values: "Due"),
                  ],
                ),
              ),
            ),
            kHeight20,
            Row(
              children: [
                Expanded(
                  child: SalesButtonWidget(
                    title: "VIEW POS RECIEPT",
                    color: kBlue,
                    onPress: () {},
                  ),
                ),
                kWidth5,
                Expanded(
                  child: SalesButtonWidget(
                    title: "EDIT SALE",
                    color: kBlue,
                    onPress: () {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SalesButtonWidget(
                    title: "RETURN SALE",
                    color: kBlue,
                    onPress: () {},
                  ),
                ),
                kWidth5,
                Expanded(
                  child: SalesButtonWidget(
                    title: "VIEW PAYMENT",
                    color: kBlue,
                    onPress: () {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SalesButtonWidget(
                    title: "ADD PAYMENT",
                    color: kBlue,
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SalesButtonWidget extends StatelessWidget {
  const SalesButtonWidget({
    Key? key,
    required this.title,
    required this.color,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final Color color;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      color: color,
      child: Text(
        title,
        style: const TextStyle(
          color: kWhiteColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
