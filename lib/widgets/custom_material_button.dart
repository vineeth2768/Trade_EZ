import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';

class CustomMaterialBtton extends StatelessWidget {
  const CustomMaterialBtton({
    required this.onPressed,
    this.buttonText,
    this.textStyle,
    this.child,
    this.icon,
    this.height,
    this.fontSize = 14,
    this.textColor,
    this.color,
    this.fittedText = false,
    this.minWidth = double.infinity,
    this.padding,
    Key? key,
  }) : super(key: key);
  final Widget? child;
  final String? buttonText;
  final Widget? icon;
  final double fontSize;
  final Color? textColor;
  final Color? color;
  final double? minWidth;
  final double? height;
  final Function() onPressed;
  final bool fittedText;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: height,
        padding: padding,
        minWidth: minWidth,
        onPressed: onPressed,
        color: color ?? kButtonColor,
        child: child ??
            (fittedText
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (icon != null) icon!,
                      if (icon != null) kWidth10,
                      Flexible(
                        child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              buttonText!,
                              style: TextStyle(
                                color: textColor ?? kWhiteColor,
                              ),
                            )),
                      ),
                    ],
                  )
                : icon != null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (icon != null) icon!,
                          if (icon != null) kWidth10,
                          Text(
                            buttonText!,
                            style: textStyle ??
                                TextStyle(
                                    color: textColor ?? kWhiteColor,
                                    fontSize: fontSize),
                          ),
                        ],
                      )
                    : Text(
                        buttonText!,
                        style: textStyle ??
                            TextStyle(
                                color: textColor ?? kWhiteColor,
                                fontSize: fontSize),
                      )));
  }
}
