import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/screens/screen_view_stock/widgets/table_header_text.dart';

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
      children: const [
        TableRow(children: [
          TableheaderText(
            color: kBlue,
            height: 40,
            title: "No",
          ),
          TableheaderText(
            color: kBlue,
            height: 40,
            title: "Code",
          ),
          TableheaderText(
            color: kBlue,
            height: 40,
            title: "Name",
          ),
          TableheaderText(
            color: kBlue,
            height: 40,
            title: "Price",
          ),
          TableheaderText(
            color: kBlue,
            height: 40,
            title: "Stock Qty",
          ),
          TableheaderText(
            color: kBlue,
            height: 40,
            title: "SubTotal",
          ),
        ])
      ],
    );
  }
}
