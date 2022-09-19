import 'package:flutter/material.dart';

import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/screens/screen_return_sale/widgets/sale_return_total_card.dart';
import 'package:trade_easy/screens/screen_return_sale/widgets/sales_return_product_list.dart';
import 'package:trade_easy/screens/screen_return_sale/widgets/table_header.dart';
import 'package:trade_easy/widgets/custom_text_field.dart';

class ScreenReturnSale extends StatelessWidget {
  const ScreenReturnSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Return Sale"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              kHeight10,
              const CustomTextFieldWidget(labal: "Referance NO"),
              kHeight10,
              const CustomTextFieldWidget(labal: "Return Surcharge*"),
              kHeight10,
              const Text(
                "Order Items (Please edit the return quantity below. You can remove the item or set the return quantity to zero if it is not being returned)",
              ),
              kHeight5,
              const TableHeader(),
              const SaleReturnProductList(),
              Row(
                children: const [
                  Expanded(child: SaleReturnTotalCard(values: "Item : 1(4)")),
                  Expanded(child: SaleReturnTotalCard(values: "Total : 1045")),
                ],
              ),
              Row(
                children: const [
                  Expanded(child: SaleReturnTotalCard(values: "Surcharge : 0")),
                  Expanded(child: SaleReturnTotalCard(values: "Discount : 0")),
                ],
              ),
              const Card(
                child: SizedBox(
                  height: 40,
                  child: Center(
                    child: Text(
                      "Return Amount : 1045",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              kHeight8,
              Container(
                height: 40,
                width: double.infinity,
                color: const Color(0xFFAFEEDE),
                child: Row(
                  children: const [
                    kWidth5,
                    Text("Payment Status :"),
                    Text(
                      "Due",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    kWidth3,
                    Text("&"),
                    Text("Paid Amount :"),
                    Text(
                      "44",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              kHeight8,
              TextFormField(
                maxLines: 4,
                decoration: const InputDecoration(
                  hintText: "Note",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
