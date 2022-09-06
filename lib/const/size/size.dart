import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/utils/device.dart';

const SizedBox kHeight5 = SizedBox(height: 5);
const SizedBox kHeight3 = SizedBox(height: 3);
const SizedBox kHeight8 = SizedBox(height: 8);
const SizedBox kHeight10 = SizedBox(height: 10);
const SizedBox kHeight15 = SizedBox(height: 15);
const SizedBox kHeight20 = SizedBox(height: 20);

const SizedBox kWidth5 = SizedBox(width: 5);
const SizedBox kWidth3 = SizedBox(width: 3);
const SizedBox kWidth8 = SizedBox(width: 8);
const SizedBox kWidth10 = SizedBox(width: 10);
const SizedBox kWidth15 = SizedBox(width: 15);
const SizedBox kWidth20 = SizedBox(width: 20);

final kText_10_12 = TextStyle(fontSize: DeviceUtil.isTablet ? 12 : 10);
final kItemsPriceStyle = TextStyle(fontSize: DeviceUtil.isTablet ? 12 : 10);
final kItemsPriceStyleBold = TextStyle(
    fontSize: DeviceUtil.isTablet ? 12 : 10, fontWeight: FontWeight.bold);
final kItemsButtontyle = TextStyle(
    color: kWhiteColor,
    fontWeight: FontWeight.bold,
    fontSize: DeviceUtil.isTablet ? 12 : 11);

const EdgeInsets kClearTextIconPadding =
    EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 8);

const TextStyle kText12 = TextStyle(fontSize: 12);
final kItemsTextStyle =
    TextStyle(fontSize: DeviceUtil.isTablet ? 10 : 8, color: kTextColor);
const Color kTextColor = Color(0xFF616161);

//Force keyboard to input digits only
final List<FilteringTextInputFormatter> digitsOnly = [
  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
];
