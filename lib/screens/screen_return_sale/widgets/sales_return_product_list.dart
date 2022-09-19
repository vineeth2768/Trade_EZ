import 'package:flutter/material.dart';

import 'package:trade_easy/const/colors/colors.dart';

class SaleReturnProductList extends StatelessWidget {
  const SaleReturnProductList({super.key});

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
      border: TableBorder.all(color: kBackgroundGrey, width: 0.5),
      children: List<TableRow>.generate(1, (index) {
        return TableRow(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            color: Colors.white,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              'Boost 500g',
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
              '257',
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
              '1',
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
              '1045',
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
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          ),
        ]);
      }),
    );
  }
}
