import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/widgets/custom_text_field.dart';

class ScreenAddPayment extends StatelessWidget {
  const ScreenAddPayment({super.key});

  static final _paymentMethodes = [
    "Cash",
    "Card",
    "Cheque",
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Payment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              kHeight10,
              const CustomTextFieldWidget(labal: "Reference NO"),
              kHeight10,
              Container(
                height: screenSize.height / 5,
                width: double.infinity,
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomTextFieldWidget(labal: "Amount"),
                      kHeight10,
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          labelText: "Paying By",
                          enabledBorder: OutlineInputBorder(),
                        ),
                        items: _paymentMethodes
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                      )
                    ],
                  ),
                ),
              ),
              kHeight10,
              TextFormField(
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: "Note",
                  border: OutlineInputBorder(),
                ),
              ),
              kHeight10,
              MaterialButton(
                onPressed: () {},
                color: kBlue,
                child: const Text(
                  'Add Payment',
                  style: TextStyle(color: kWhiteColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
