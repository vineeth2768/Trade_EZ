import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';

class TableHeaderWidget extends StatelessWidget {
  const TableHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.03),
        1: FractionColumnWidth(0.05),
        2: FractionColumnWidth(0.18),
        3: FractionColumnWidth(0.06),
        4: FractionColumnWidth(0.10),
        5: FractionColumnWidth(0.13),
      },
      border: TableBorder.all(width: 0.5),
      children: [
        TableRow(children: [
          Container(
            color: kBlue,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              "No",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kWhiteColor,
              ),
            ),
          ),
          Container(
            color: kBlue,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              "Code",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kWhiteColor,
              ),
            ),
          ),
          Container(
            color: kBlue,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              "Name",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kWhiteColor,
              ),
            ),
          ),
          Container(
            color: kBlue,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              "Price",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kWhiteColor,
              ),
            ),
          ),
          Container(
            color: kBlue,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              "Stock Qty",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kWhiteColor,
              ),
            ),
          ),
          Container(
            color: kBlue,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              "SubTotal",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kWhiteColor,
              ),
            ),
          ),
        ])
      ],
    );
  }
}
