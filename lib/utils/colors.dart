import 'package:flutter/material.dart';

class UIColors {
  const UIColors();
  static const Color primaryColor = Color(0xFF0A74E6);
  static const Color secondaryColor = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color dark = Color(0xFF333333);
  static const Color textDark = Color(0xFF3B3B3B);
  static const Color mediumGrey = Color(0xFF757E90);
  static const Color lightGrey = Color(0xFFD9D9D9);

  static List gradient = [
    {
      "gradient1": Color(0xFF58B7E6),
      "gradient2": Color(0xFF0A74E6),
      "gradientShadow": Color.fromRGBO(35, 138, 230, 0.2)
    },
    {
      "gradient1": Color(0xFFF86A6A),
      "gradient2": Color(0xFFFD558E),
      "gradientShadow": Color.fromRGBO(250, 98, 119, 0.2)
    },
    {
      "gradient1": Color(0xFF2FB2D8),
      "gradient2": Color(0xFF2CE487),
      "gradientShadow": Color.fromRGBO(45, 203, 1740, 0.2)
    },
    {
      "gradient1": Color(0xFFFFA24F),
      "gradient2": Color(0xFFFF5B1C),
      "gradientShadow": Color.fromRGBO(247, 114, 48, 0.2)
    }
  ];
}
