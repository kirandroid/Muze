import 'package:flutter/material.dart';
import 'package:muze/utils/colors.dart';
import 'package:muze/utils/sizes.dart';
import 'package:muze/utils/text_style.dart';

class NoUIScreen extends StatelessWidget {
  final String emoji;
  NoUIScreen({this.emoji});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("No UI $emoji",
            style: StyleText.mediumMontserrat.copyWith(
                color: UIColors.textDark, fontSize: UISize.fontSize(24))),
      ),
    );
  }
}
