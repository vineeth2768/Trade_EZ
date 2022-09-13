import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:trade_easy/routes/routes.dart';
import 'package:trade_easy/screens/screen_home/screen_home.dart';

import 'package:trade_easy/screens/screen_login/screen_login.dart';
import 'package:trade_easy/screens/screen_pos/screen_pos.dart';

import 'package:trade_easy/screens/screen_splash/screen_splash.dart';
import 'package:trade_easy/screens/screen_view_stock/screen_view_stock.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
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
          route: (context) => ScreenSplash(),
          routeLogin: (context) => const ScreenLogin(),
          routeHome: (context) => const ScreenHome(),
          routePos: (context) => const ScreenPos(),
          routeSales: (context) => const ScreenViewStock(),
        },
      );
    });
  }
}
