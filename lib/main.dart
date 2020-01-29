import 'package:flutter/material.dart';
import 'package:muze/screens/onboarding/pages/customize_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CustomizeScreen(),
  ));
}
