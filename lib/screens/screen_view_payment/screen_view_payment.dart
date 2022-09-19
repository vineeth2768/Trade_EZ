import 'package:flutter/material.dart';

import 'package:trade_easy/screens/screen_view_payment/widgets/view_payment_sales_list_table.dart';
import 'package:trade_easy/screens/screen_view_payment/widgets/view_payment_table_header.dart';

class ScreenViewPayment extends StatelessWidget {
  const ScreenViewPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Payment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            ViewPayemntTableHeader(),
            ViewPaymentSalesListtable(),
          ],
        ),
      ),
    );
  }
}
