import 'dart:async';

import 'package:flutter/material.dart';

import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/routes/routes.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, routeLogin));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logos/tradeEZlog.png",
            height: 80,
            width: 450,
          ),
          const Text(
            "Powered By CIGNES",
            style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
