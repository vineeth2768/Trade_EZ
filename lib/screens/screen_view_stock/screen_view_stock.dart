import 'package:flutter/material.dart';
import 'package:trade_easy/screens/screen_view_stock/widgets/product_list_table.dart';

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
              children: const [
                ProductListTableWidget(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
