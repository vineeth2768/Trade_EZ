// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/routes/routes.dart';
import 'package:trade_easy/utils/device.dart';

class ScreenSplash extends StatelessWidget {
  ScreenSplash({Key? key, this.hi}) : super(key: key);

  final hi;

  String? orientationMode;
  late SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      prefs = await SharedPreferences.getInstance();

      await afterSplash(context);
    });
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

  Future<void> afterSplash(BuildContext context) async {
    // prefs = await SharedPreferences.getInstance();
    prefs.remove(OrientationMode.deviceModeKey);

    // prefs.setString(OrientationMode.deviceModeKey, OrientationMode.verticalMode);
    orientationMode = prefs.getString(OrientationMode.deviceModeKey);

    await Future.delayed(const Duration(seconds: 2));

    if (orientationMode == null) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => WillPopScope(
          onWillPop: () async => false,
          child: Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Choose a Mode from below to continue. The application will be shown based on your choice!, You can change it later from the settings menu.',
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    kHeight10,
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () async {
                              Navigator.pop(context);
                              prefs.setString(OrientationMode.deviceModeKey,
                                  OrientationMode.verticalMode);
                              await OrientationMode.getDeviceMode;
                              // await OrientationMode.toLandscape();
                              Navigator.pushNamed(context, routeLogin);
                            },
                            color: Colors.blueGrey[300],
                            child: const FittedBox(
                              child: Text(
                                'Vertical Mode',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: kWhiteColor),
                              ),
                            ),
                          ),
                        ),
                        kWidth5,
                        Expanded(
                          child: MaterialButton(
                            onPressed: () async {
                              Navigator.pop(context);
                              prefs.setString(OrientationMode.deviceModeKey,
                                  OrientationMode.normalMode);
                              await OrientationMode.getDeviceMode;
                              // await OrientationMode.toLandscape();
                              Navigator.pushNamed(context, routeLogin);
                            },
                            color: baseColor.withOpacity(.8),
                            child: const FittedBox(
                              child: Text(
                                'Normal Mode',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: kWhiteColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ),
      );
    } else {
      // await OrientationMode.toLandscape();
      Navigator.pushNamed(context, routeLogin);
    }
  }
}



// Navigator.pushNamed(context, routeLogin);
