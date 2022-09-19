import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';

class TotalAmountTable extends StatelessWidget {
  const TotalAmountTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.35),
        1: FractionColumnWidth(0.03),
        2: FractionColumnWidth(0.10),
        3: FractionColumnWidth(0.02),
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
              'Total',
              style: TextStyle(fontWeight: FontWeight.bold),
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
              '4',
              style: TextStyle(fontWeight: FontWeight.bold),
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
              '775.00',
              style: TextStyle(fontWeight: FontWeight.bold),
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
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.close),
            ),
          ),
        ]);
      }),
    );
  }
}
