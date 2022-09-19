import 'package:flutter/material.dart';

import 'package:trade_easy/const/colors/colors.dart';

class ViewPaymentSalesListtable extends StatelessWidget {
  const ViewPaymentSalesListtable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.10),
        1: FractionColumnWidth(0.10),
        2: FractionColumnWidth(0.10),
        3: FractionColumnWidth(0.10),
      },
      border: TableBorder.all(color: kBackgroundGrey),
      children: List<TableRow>.generate(1, (index) {
        return TableRow(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            color: Colors.white,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              '21/07/2022',
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            color: Colors.white,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              'IPAY2395',
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            color: Colors.white,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              '44.00 SR',
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            color: Colors.white,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              'Cash',
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ]);
      }),
    );
  }
}
