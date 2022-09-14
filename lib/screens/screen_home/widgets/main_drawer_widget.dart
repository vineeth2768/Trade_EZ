import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/routes/routes.dart';

class MainDrawerWidget extends StatelessWidget {
  const MainDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: kWhiteColor,
              ),
              accountName: Text("Demo User"),
              accountEmail: Text("user@gmail.com"),
            ),
            ListTile(
              leading: const Icon(
                Icons.point_of_sale,
                color: baseColor,
              ),
              title: const Text('Pos'),
              onTap: () {
                Navigator.pushNamed(context, routePos);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.shopping_bag,
                color: baseColor,
              ),
              title: const Text('View Stock'),
              onTap: () {
                Navigator.pushNamed(context, routeViewStock);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.insert_invitation,
                color: baseColor,
              ),
              title: const Text('Credited Sales'),
              onTap: () {
                Navigator.pushNamed(context, routeCreditedSale);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.report_gmailerrorred,
                color: baseColor,
              ),
              title: const Text('View Reciept'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.info,
                color: baseColor,
              ),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: baseColor,
              ),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
