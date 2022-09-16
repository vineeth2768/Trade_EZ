import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/routes/routes.dart';

import 'package:trade_easy/screens/screen_register/widgets/text_widget.dart';
import 'package:trade_easy/widgets/custom_text_field.dart';

class ScreenRegister extends StatelessWidget {
  const ScreenRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TextRowWidget(title: "Cash in hand", values: "0.00 SR"),
              kHeight10,
              const TextRowWidget(
                  title: "Cash Payment", values: "0.00 SR(0.00 SR)"),
              kHeight10,
              const TextRowWidget(
                  title: "Cheque Payment", values: "0.00 SR(0.00 SR)"),
              kHeight10,
              const TextRowWidget(
                  title: "Credit Card Payment", values: "0.00 SR(0.00 SR)"),
              kHeight10,
              const TextRowWidget(
                  title: "Gift Card Payment", values: "0.00 SR(0.00 SR)"),
              kHeight10,
              const TextRowWidget(
                  title: "Total Sale", values: "0.00 SR(0.00 SR)"),
              kHeight10,
              const TextRowWidget(title: "Refund", values: "0.00 SR(0.00 SR)"),
              kHeight10,
              const TextRowWidget(title: "Expense", values: "0.00 SR(0.00 SR)"),
              kHeight8,
              const Divider(
                thickness: 1,
                color: primaryColor,
              ),
              const TextRowWidget(title: "Total", values: "0.00 SR"),
              kHeight8,
              const Divider(
                thickness: 1,
                color: primaryColor,
              ),
              kHeight10,
              const CustomTextFieldWidget(labal: "Total Cash*"),
              kHeight10,
              const CustomTextFieldWidget(labal: "Total Credit Card Slips*"),
              kHeight10,
              const CustomTextFieldWidget(labal: "Total Cheques*"),
              kHeight10,
              TextFormField(
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: "Note",
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, routeUserProfile);
                    },
                    color: kBlue,
                    child: const Text(
                      "VIEW PROFILE",
                      style: TextStyle(color: kWhiteColor),
                    ),
                  ),
                  kWidth3,
                  MaterialButton(
                    onPressed: () {},
                    color: kBlue,
                    child: const Text(
                      "CLOSE REGISTER",
                      style: TextStyle(color: kWhiteColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
