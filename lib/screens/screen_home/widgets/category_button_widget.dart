import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';

class CategoryWidgetButtons extends StatelessWidget {
  const CategoryWidgetButtons({
    Key? key,
    required this.title,
    required this.onPress,
    required this.color,
    this.icon,
  }) : super(key: key);
  final String title;
  final Function() onPress;
  final Color color;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      color: color,
      child: Text(
        title,
        style: const TextStyle(color: kWhiteColor),
      ),
    );
  }
}
