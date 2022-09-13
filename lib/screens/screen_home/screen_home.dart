import 'package:flutter/material.dart';

import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/screens/screen_home/widgets/home_grid_widget.dart';
import 'package:trade_easy/screens/screen_home/widgets/main_drawer_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: baseColor,
      appBar: AppBar(
        backgroundColor: baseColor,
        elevation: 0,
      ),
      drawer: const MainDrawerWidget(),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: screenSize.height / 12,
            width: screenSize.width,
            color: baseColor,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.asset(
                "assets/logos/tradeEZlog.png",
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  )),
              child: const HomeGridWidget(),
            ),
          ),
          kHeight5,
          const Text(
            "Powered By CIGNES",
            style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),
          ),
          kHeight5,
        ],
      )),
    );
  }
}
