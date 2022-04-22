import 'package:flutter/material.dart';
import 'package:onboarding/core/constants/colors_const.dart';
import 'package:onboarding/core/constants/size_const.dart';

class MyBoldText {
  static Text myBoldText(String text, {Color? color, double? textSize}) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color ?? ColorsConst.ktextColor,
        fontSize: textSize ?? MyTextSizeConst.ktextSize
      ),
    );
  }
}
