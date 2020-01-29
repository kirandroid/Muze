import 'package:flutter/material.dart';
import 'package:muze/routes/router.gr.dart';
import 'package:muze/screens/onboarding/pages/customize_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Router.customizeScreen,
    onGenerateRoute: Router.onGenerateRoute,
    navigatorKey: Router.navigatorKey,
    home: CustomizeScreen(),
  ));
}
