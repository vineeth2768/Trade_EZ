import 'package:flutter/material.dart';

import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/screens/screen_credited_sale/widgets/credit_sale_card_widget.dart';

class ScreenCreditedSale extends StatelessWidget {
  const ScreenCreditedSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Credited Sale"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(5.0),
                      border: OutlineInputBorder(),
                      hintText: "Coustmer",
                    ),
                  ),
                ),
                kWidth3,
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(5.0),
                        border: OutlineInputBorder(),
                        hintText: "Select Date"),
                  ),
                ),
                kWidth3,
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    height: 45,
                    color: baseColor,
                    child: const Icon(
                      Icons.search,
                      color: kWhiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: CreditSaleCardWidget(),
          )
        ],
      ),
    );
  }
}
