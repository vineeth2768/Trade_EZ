import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
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
