import 'package:flutter/material.dart';
import 'package:muze/utils/colors.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.primaryColor,
      body: Center(
          child: Image.asset(
        "assets/images/logo.png",
        height: 100,
        width: 100,
      )),
    );
  }
}
