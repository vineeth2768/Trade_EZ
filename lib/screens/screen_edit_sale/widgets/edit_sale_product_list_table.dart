import 'package:flutter/material.dart';

import 'package:trade_easy/const/colors/colors.dart';

class EditSaleProductListTable extends StatelessWidget {
  const EditSaleProductListTable({super.key});

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
      border: TableBorder.all(color: kBackgroundGrey),
      children: List<TableRow>.generate(1, (index) {
        return TableRow(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            color: Colors.white,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              'Product',
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
              '186',
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
              '775.00',
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
