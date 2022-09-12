// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/routes/routes.dart';

import 'package:trade_easy/screens/screen_login/widgets/text_field_widget.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: baseColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: Adaptive.h(40),
                  width: 90.w,
                  color: kWhiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/logos/tradeEZlog.png",
                        height: 60,
                        width: 400,
                      ),
                      Card(
                        elevation: 4,
                        child: Container(
                          height: Adaptive.h(25),
                          width: 80.w,
                          color: kWhiteColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                kHeight5,
                                const TextFieldWidgets(icon: Icons.person),
                                kHeight5,
                                const TextFieldWidgets(icon: Icons.lock),
                                kHeight5,
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.pushNamedAndRemoveUntil(
                                        context, routeHome, (route) => false);
                                  },
                                  color: loginButtonColor,
                                  minWidth: double.infinity,
                                  height: 40,
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(color: kWhiteColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              kHeight10,
              const Text(
                "Powered By CIGNES",
                style:
                    TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
