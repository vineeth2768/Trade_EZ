import 'package:flutter/material.dart';

class TextFieldWidgets extends StatelessWidget {
  const TextFieldWidgets({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      border: const OutlineInputBorder(),
      prefixIcon: Icon(icon),
    ));
  }
}
