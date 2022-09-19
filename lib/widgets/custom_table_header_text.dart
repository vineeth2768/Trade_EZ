import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';

class CustomTableHeaderText extends StatelessWidget {
  const CustomTableHeaderText({
    Key? key,
    required this.title,
    required this.color,
    required this.height,
  }) : super(key: key);

  final String title;
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
      alignment: Alignment.center,
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: kWhiteColor,
        ),
      ),
    );
  }
}
