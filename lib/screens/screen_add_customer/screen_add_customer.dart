import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/screens/screen_add_customer/widgets/add_customer_textfield_widget.dart';

class ScreenAddCustomer extends StatelessWidget {
  const ScreenAddCustomer({super.key});

  static final _customers = [
    "Genaral",
    "Reseller",
    "Distributor",
    "New Customer(+10)",
  ];
  static final _priceGroup = [
    "Default",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Customer"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            kHeight10,
            DropdownButtonFormField(
              decoration: const InputDecoration(
                  labelText: "Customer Group",
                  enabledBorder: OutlineInputBorder()),
              items: _customers.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: _customers.first,
              onChanged: (String? newValue) {},
            ),
            kHeight10,
            DropdownButtonFormField(
              decoration: const InputDecoration(
                  labelText: "Price Group",
                  enabledBorder: OutlineInputBorder()),
              items: _priceGroup.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: _priceGroup.first,
              onChanged: (String? newValue) {},
            ),
            kHeight10,
            const AddCustomerTextFieldWidget(title: "Company*"),
            kHeight10,
            const AddCustomerTextFieldWidget(title: "Arabic Name*"),
            kHeight10,
            const AddCustomerTextFieldWidget(title: "Adderss"),
            kHeight10,
            const AddCustomerTextFieldWidget(title: "VAT Number"),
            kHeight10,
            const AddCustomerTextFieldWidget(title: "Email Adderss"),
            kHeight10,
            const AddCustomerTextFieldWidget(title: "Phone Number"),
            kHeight10,
            const AddCustomerTextFieldWidget(title: "City"),
            kHeight10,
            const AddCustomerTextFieldWidget(title: "State"),
            kHeight10,
            const AddCustomerTextFieldWidget(title: "Postal Code"),
            kHeight10,
            const AddCustomerTextFieldWidget(title: "Country"),
            kHeight10,
            MaterialButton(
              onPressed: () {},
              color: kBlue,
              child: const Text(
                "Add Customer",
                style: TextStyle(color: kWhiteColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
