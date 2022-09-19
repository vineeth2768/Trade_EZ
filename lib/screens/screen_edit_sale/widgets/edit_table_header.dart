import 'package:flutter/material.dart';
import 'package:trade_easy/widgets/custom_table_header_text.dart';

import '../../../const/colors/colors.dart';

class EditSaleTableHeader extends StatelessWidget {
  const EditSaleTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.15),
        1: FractionColumnWidth(0.06),
        2: FractionColumnWidth(0.03),
        3: FractionColumnWidth(0.10),
        4: FractionColumnWidth(0.02),
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
            title: "Subtotal",
            color: kBlue,
            height: 40,
          ),
          Container(
            color: kBlue,
            height: 40,
            child: const Center(
                child: Icon(
              Icons.delete,
              color: kWhiteColor,
              size: 20,
            )),
          )
        ])
      ],
    );
  }
}
