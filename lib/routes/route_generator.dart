import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:trade_easy/routes/routes.dart';
import 'package:trade_easy/screens/screen_add_customer/screen_add_customer.dart';
import 'package:trade_easy/screens/screen_add_payment/screen_add_payment.dart';
import 'package:trade_easy/screens/screen_credited_sale/screen_credited_sale.dart';
import 'package:trade_easy/screens/screen_credited_sale/screen_sales/screen_sales.dart';
import 'package:trade_easy/screens/screen_home/screen_home.dart';
import 'package:trade_easy/screens/screen_login/screen_login.dart';
import 'package:trade_easy/screens/screen_pos/screen_pos.dart';
import 'package:trade_easy/screens/screen_register/screen_register.dart';
import 'package:trade_easy/screens/screen_splash/screen_splash.dart';
import 'package:trade_easy/screens/screen_user_profile/screen_user_profile.dart';
import 'package:trade_easy/screens/screen_view_reciept/screen_view_reciept.dart';
import 'package:trade_easy/screens/screen_view_stock/screen_view_stock.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    // arguments of routes
    final args = settings.arguments;
    log('routeName == ${settings.name}');
    log('arguments == $args');

    switch (settings.name) {
      case routeRoot:
        return MaterialPageRoute(builder: (_) => ScreenSplash());
      case routeLogin:
        return MaterialPageRoute(builder: (_) => const ScreenLogin());
      case routeHome:
        return MaterialPageRoute(builder: (_) => const ScreenHome());
      case routePos:
        return MaterialPageRoute(builder: (_) => const ScreenPos());
      case routeViewStock:
        return MaterialPageRoute(builder: (_) => const ScreenViewStock());
      case routeCreditedSale:
        return MaterialPageRoute(builder: (_) => const ScreenCreditedSale());
      case routeViewReciept:
        return MaterialPageRoute(builder: (_) => const ScreenViewReciept());
      case routeRegister:
        return MaterialPageRoute(builder: (_) => const ScreenRegister());
      case routeAddCustomer:
        return MaterialPageRoute(builder: (_) => const ScreenAddCustomer());
      case routeUserProfile:
        return MaterialPageRoute(builder: (_) => const ScreenUserProfile());
      case routeAddPayment:
        return MaterialPageRoute(builder: (_) => const ScreenAddPayment());
      case routeSales:
        if (args is Map) {
          return MaterialPageRoute(builder: (_) {
            return ScreenSales(index: args['index'], name: args['name']);
          });
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  // Error Route Page
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error'),
        ),
      ),
    );
  }
}
