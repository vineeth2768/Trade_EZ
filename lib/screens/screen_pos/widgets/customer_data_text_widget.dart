import 'package:flutter/material.dart';

class CustomerDataTextWidget extends StatelessWidget {
  const CustomerDataTextWidget({
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
          style: const TextStyle(fontSize: 15),
        )),
        const Text(" : "),
        Expanded(
            child: Text(
          values,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )),
      ],
    );
  }
}
