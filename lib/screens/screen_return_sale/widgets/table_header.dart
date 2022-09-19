import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/widgets/custom_table_header_text.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.14),
        1: FractionColumnWidth(0.06),
        2: FractionColumnWidth(0.03),
        3: FractionColumnWidth(0.03),
        4: FractionColumnWidth(0.10),
        5: FractionColumnWidth(0.03),
      },
      border: TableBorder.all(width: 0.5),
      children: [
        TableRow(children: [
          const CustomTableHeaderText(
            title: "Product",
            color: kBlue,
            height: 40,
          ),
          const CustomTableHeaderText(
            title: "Price",
            color: kBlue,
            height: 40,
          ),
          const CustomTableHeaderText(
            title: "Qty",
            color: kBlue,
            height: 40,
          ),
          const CustomTableHeaderText(
            title: "R.Qty",
            color: kBlue,
            height: 40,
          ),
          const CustomTableHeaderText(
            title: "SubTotal",
            color: kBlue,
            height: 40,
          ),
          Container(
            height: 40,
            color: kBlue,
            child: const Center(
                child: Icon(
              Icons.delete,
              size: 20,
              color: kWhiteColor,
            )),
          )
        ]),
      ],
    );
  }
}
