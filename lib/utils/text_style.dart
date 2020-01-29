import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:muze/utils/colors.dart';
import 'package:muze/utils/sizes.dart';

class StyleText {
  const StyleText();

  static TextStyle semiBoldMontserrat =
      TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w600);

  static TextStyle boldMontserrat = TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w700,
      color: UIColors.dark,
      fontSize: UISize.fontSize(26));

  static TextStyle mediumMontserrat =
      TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w500);

  static TextStyle regularMontserrat =
      TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w400);

  static TextStyle lightMontserrat =
      TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w300);
}
