import 'package:flutter/material.dart';

class ProductListTableWidget extends StatelessWidget {
  const ProductListTableWidget({
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
      border: TableBorder.all(color: Colors.grey, width: 0.5),
      children: List<TableRow>.generate(30, (index) {
        return TableRow(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            color: Colors.white,
            height: 40,
            alignment: Alignment.center,
            child: Text(
              '${index + 1}',
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
              '345',
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
            child: Text(
              'Product ${index + 1}',
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
              '25.67',
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
              '7',
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
              '26.17',
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
