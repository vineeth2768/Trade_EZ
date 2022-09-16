import 'package:flutter/material.dart';

import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/widgets/row_custom_text.dart';

class ScreenUserProfile extends StatelessWidget {
  const ScreenUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            kHeight10,
            const Center(
              child: CircleAvatar(
                maxRadius: 60,
                child: Icon(
                  Icons.person,
                  size: 60,
                ),
              ),
            ),
            kHeight10,
            const Text(
              "Vipil Nair",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight8,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.email),
                kWidth5,
                Text("vipil@gmail.com"),
              ],
            ),
            Card(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: const [
                  kHeight20,
                  RowCustomTextWidget(title: "First Name", values: "Vipil"),
                  kHeight20,
                  RowCustomTextWidget(title: "Last Name", values: "Nair"),
                  kHeight20,
                  RowCustomTextWidget(
                      title: "Company", values: "SA Trading Est"),
                  kHeight20,
                  RowCustomTextWidget(title: "Phone", values: "9746371167"),
                  kHeight20,
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
