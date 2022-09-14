import 'package:flutter/material.dart';

class RegisterTextFieldWidget extends StatelessWidget {
  const RegisterTextFieldWidget({
    Key? key,
    required this.labal,
  }) : super(key: key);
  final String labal;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labal,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
