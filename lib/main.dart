import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:trade_easy/routes/routes.dart';

import 'package:trade_easy/screens/screen_home/screen_home.dart';
import 'package:trade_easy/screens/screen_login/screen_login.dart';
import 'package:trade_easy/screens/screen_splash/screen_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Cignes TradeEZ',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        initialRoute: route,
        routes: {
          route: (context) => const ScreenSplash(),
          routeLogin: (context) => const ScreenLogin(),
          routeHome: (context) => const ScreenHome(),
        },
      );
    });
  }
}
