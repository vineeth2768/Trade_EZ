import 'package:flutter/material.dart';
import 'package:trade_easy/widgets/row_custom_text.dart';

class ScreenSales extends StatelessWidget {
  const ScreenSales({super.key, required this.index, required this.name});

  final int index;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salels ${index + 1}"),
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              children: const [
                RowCustomTextWidget(title: "Data", values: "222-06-2022"),
                RowCustomTextWidget(title: "Customer", values: "Suppler"),
                RowCustomTextWidget(title: "Biller", values: "Vipin"),
                RowCustomTextWidget(title: "Grand Total", values: "75485"),
                RowCustomTextWidget(title: "Paid", values: "6500"),
                RowCustomTextWidget(title: "Balance", values: "4851"),
                RowCustomTextWidget(title: "Sales Status", values: "Completed"),
                RowCustomTextWidget(title: "Payment Status", values: "Due"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
