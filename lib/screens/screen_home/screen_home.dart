import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/screens/screen_home/widgets/category_button_widget.dart';
import 'package:trade_easy/screens/screen_home/widgets/payment_button_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: SearchField(
                            suggestions: const [],
                            hint: "Search product by name/code",
                            searchStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.8),
                            ),
                            searchInputDecoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(10),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black.withOpacity(0.8)),
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                      // border: Border.all(color: Colors.grey),
                                      ),
                                  padding: const EdgeInsets.all(5),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.visibility)),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                      // border: Border(
                                      //   top: BorderSide(color: Colors.grey),
                                      //   bottom: BorderSide(color: Colors.grey),
                                      //   right: BorderSide(color: Colors.grey),
                                      // ),
                                      ),
                                  padding: const EdgeInsets.all(5),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add)),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                      // border: Border(
                                      //   top: BorderSide(color: Colors.grey),
                                      //   bottom: BorderSide(color: Colors.grey),
                                      //   right: BorderSide(color: Colors.grey),
                                      // ),
                                      ),
                                  // padding: const EdgeInsets.all(5),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.wallet)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryWidgetButtons(
                          color: kBlue,
                          title: "Category",
                          onPress: () {},
                        ),
                        CategoryWidgetButtons(
                          color: kOrange,
                          title: "Sub Category",
                          onPress: () {},
                        ),
                        CategoryWidgetButtons(
                          color: kTeal,
                          title: "Brand",
                          onPress: () {},
                        ),
                        CategoryWidgetButtons(
                          color: kBlue,
                          title: "Re-load",
                          onPress: () {},
                        ),
                      ],
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 100,
                          childAspectRatio: 3 / 4,
                          crossAxisSpacing: 3,
                          mainAxisSpacing: 3,
                        ),
                        itemCount: 10,
                        itemBuilder: (BuildContext ctx, index) {
                          return SizedBox(
                            height: 10,
                            width: 10,
                            child: InkWell(
                              onTap: () {
                                log('Product Clicked ====${index + 1}');
                              },
                              child: Card(
                                elevation: 5,
                                child: Center(
                                  child: Text("Product${index + 1}"),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        kHeight5,
                        SearchField(
                          suggestions: const [],
                          hint: "Search customer",
                          searchStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.8),
                          ),
                          searchInputDecoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.all(10),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.8)),
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        kHeight5,
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              bottom: 2.0,
                              top: 2.0,
                            ),
                            child: Container(
                              color: Colors.grey,
                              child: ListView(),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: double.infinity,
                              color: kWhiteColor,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "  Items",
                                    style: TextStyle(color: primaryColor),
                                  ),
                                  Text(
                                    "0.00  ",
                                    style: TextStyle(color: primaryColor),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 20,
                              width: double.infinity,
                              color: kWhiteColor,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "  Discount",
                                    style: TextStyle(color: primaryColor),
                                  ),
                                  Text(
                                    "0.00  ",
                                    style: TextStyle(color: primaryColor),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 35,
                              width: double.infinity,
                              color: primaryColor,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "  Total payable",
                                    style: TextStyle(color: kWhiteColor),
                                  ),
                                  Text(
                                    "0.00  ",
                                    style: TextStyle(color: kWhiteColor),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: PaymentButtonWidget(
                                    title: "Credit Payment",
                                    color: kOrange,
                                    onPress: () {},
                                    height: 46,
                                  ),
                                ),
                                Expanded(
                                  child: PaymentButtonWidget(
                                    title: "Partial Paymnet",
                                    color: kGreen,
                                    onPress: () {},
                                    height: 46,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: PaymentButtonWidget(
                                    title: "Cancal",
                                    color: kRed,
                                    onPress: () {},
                                    height: 46,
                                  ),
                                ),
                                Expanded(
                                  child: PaymentButtonWidget(
                                    title: "Full Payment",
                                    color: kTeal,
                                    onPress: () {},
                                    height: 46,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.drag_indicator),
        ));
  }
}
