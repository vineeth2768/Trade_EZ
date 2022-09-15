import 'package:flutter/material.dart';

class AddCustomerTextFieldWidget extends StatelessWidget {
  const AddCustomerTextFieldWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: title,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
