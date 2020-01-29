import 'package:flutter_screenutil/flutter_screenutil.dart';

class UISize {
  UISize._();
  static double height(double height) =>
      ScreenUtil.instance.setHeight(height * 2) as double;
  static double width(double width) =>
      ScreenUtil.instance.setWidth(width * 2) as double;
  static double fontSize(double size) => ScreenUtil().setSp(size * 2) as double;
}
