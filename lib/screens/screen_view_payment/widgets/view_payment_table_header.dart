import 'package:flutter/cupertino.dart';

import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/widgets/custom_table_header_text.dart';

class ViewPayemntTableHeader extends StatelessWidget {
  const ViewPayemntTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.10),
        1: FractionColumnWidth(0.10),
        2: FractionColumnWidth(0.10),
        3: FractionColumnWidth(0.10),
      },
      border: TableBorder.all(width: 0.5),
      children: const [
        TableRow(children: [
          CustomTableHeaderText(
            title: "Date",
            color: kBlue,
            height: 40,
          ),
          CustomTableHeaderText(
            title: "Reference No",
            color: kBlue,
            height: 40,
          ),
          CustomTableHeaderText(
            title: "Amount",
            color: kBlue,
            height: 40,
          ),
          CustomTableHeaderText(
            title: "Paid By",
            color: kBlue,
            height: 40,
          )
        ]),
      ],
    );
  }
}
