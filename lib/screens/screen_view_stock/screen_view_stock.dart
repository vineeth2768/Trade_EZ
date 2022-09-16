import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/screens/screen_view_stock/widgets/product_list_table.dart';
import 'package:trade_easy/screens/screen_view_stock/widgets/stock_total_widget.dart';

import 'package:trade_easy/screens/screen_view_stock/widgets/table_header_widget.dart';

class ScreenViewStock extends StatelessWidget {
  const ScreenViewStock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Stock"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TableHeaderWidget(),
            Expanded(
                child: ListView(
              children: [
                const ProductListTableWidget(),
                Container(
                  height: 80,
                  width: double.infinity,
                  color: kBlue,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: const [
                      StockTotalWidget(title: "Total Items", value: "987"),
                      kHeight15,
                      StockTotalWidget(
                          title: "Grand Total", value: "103455.56 SR"),
                    ]),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
