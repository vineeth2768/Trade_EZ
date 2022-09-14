import 'package:flutter/material.dart';

class TextRowWidget extends StatelessWidget {
  const TextRowWidget({
    Key? key,
    required this.title,
    required this.values,
  }) : super(key: key);

  final String title;
  final String values;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          title,
          style: const TextStyle(fontSize: 16),
        )),
        const Text(
          " : ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(
            child: Text(
          values,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        )),
      ],
    );
  }
}
