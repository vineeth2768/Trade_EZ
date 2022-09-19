import 'package:flutter/material.dart';

import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/screens/screen_edit_sale/widgets/edit_sale_product_list_table.dart';
import 'package:trade_easy/screens/screen_edit_sale/widgets/edit_table_header.dart';
import 'package:trade_easy/screens/screen_edit_sale/widgets/total_amount_table.dart';
import 'package:trade_easy/widgets/custom_text_field.dart';

class ScreenEditSale extends StatelessWidget {
  const ScreenEditSale({super.key});

  static final _paymentStatus = [
    "Pending",
    "Completed",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Sale"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomTextFieldWidget(labal: "Reference No*"),
              kHeight10,
              const CustomTextFieldWidget(labal: "Customer"),
              kHeight10,
              const CustomTextFieldWidget(labal: "Search product by name/code"),
              kHeight10,
              const Text("Order Items *"),
              kHeight10,
              const EditSaleTableHeader(),
              const EditSaleProductListTable(),
              kHeight10,
              const TotalAmountTable(),
              kHeight10,
              const CustomTextFieldWidget(labal: "Order Discount"),
              kHeight10,
              const CustomTextFieldWidget(labal: "Shipping"),
              kHeight10,
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: "Sales Status",
                  enabledBorder: OutlineInputBorder(),
                ),
                items: _paymentStatus
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {},
              ),
              kHeight10,
              const CustomTextFieldWidget(labal: "Payment Term"),
              kHeight10,
              Row(
                children: const [
                  Expanded(child: EditSaleTotalCard(title: "Items : 1(4)")),
                  Expanded(child: EditSaleTotalCard(title: "Total : 744")),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                      child: EditSaleTotalCard(title: "Order Discount : 0")),
                  Expanded(child: EditSaleTotalCard(title: "Shipping : 0")),
                ],
              ),
              const EditSaleTotalCard(title: "Grand Total : 744"),
              kHeight10,
              TextFormField(
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: "Sale Note",
                  border: OutlineInputBorder(),
                ),
              ),
              kHeight10,
              TextFormField(
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: "Staff Note",
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

class EditSaleTotalCard extends StatelessWidget {
  const EditSaleTotalCard({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 40,
        child: Center(
            child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
