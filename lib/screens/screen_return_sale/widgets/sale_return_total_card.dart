import 'package:flutter/material.dart';

class SaleReturnTotalCard extends StatelessWidget {
  const SaleReturnTotalCard({
    Key? key,
    required this.values,
  }) : super(key: key);
  final String values;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 40,
        child: Center(
          child: Text(
            values,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
