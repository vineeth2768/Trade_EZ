import 'package:flutter/material.dart';

import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';

class ScreenViewReciept extends StatelessWidget {
  const ScreenViewReciept({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Reciepts"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(5.0),
                      border: OutlineInputBorder(),
                      hintText: "Coustmer",
                    ),
                  ),
                ),
                kWidth3,
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(5.0),
                        border: OutlineInputBorder(),
                        hintText: "Select Date"),
                  ),
                ),
                kWidth3,
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    height: 45,
                    color: baseColor,
                    child: const Icon(
                      Icons.search,
                      color: kWhiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext ctx, index) {
                  return Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "SALE ${index + 1}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 80,
                                color: kGreen,
                                child: const Center(
                                  child: Text(
                                    "Completed",
                                    style: TextStyle(
                                        color: kWhiteColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                          kHeight3,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Cash Customer",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 40,
                                color: kRed,
                                child: const Center(
                                  child: Text(
                                    "due",
                                    style: TextStyle(
                                        color: kWhiteColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          kHeight5,
                          Row(
                            children: const [
                              Text(
                                "Grand Total",
                              ),
                              Text(":"),
                              Text(
                                "27789.68",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          kHeight3,
                          Row(
                            children: const [
                              Text(
                                "Balance",
                              ),
                              Text(":"),
                              Text(
                                "1054.44",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
