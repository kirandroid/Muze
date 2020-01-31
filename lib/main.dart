import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muze/routes/router.gr.dart';
import 'package:muze/screens/onboarding/pages/customize_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Router.customizeScreen,
    onGenerateRoute: Router.onGenerateRoute,
    navigatorKey: Router.navigatorKey,
    home: CustomizeScreen(),
  )

      //For previewing different device sizes
      // DevicePreview(
      //     builder: (context) => MaterialApp(
      //       locale: DevicePreview.of(context).locale,
      //       builder: DevicePreview.appBuilder,
      //       debugShowCheckedModeBanner: false,
      //       initialRoute: Router.customizeScreen,
      //       onGenerateRoute: Router.onGenerateRoute,
      //       navigatorKey: Router.navigatorKey,
      //       home: CustomizeScreen(),
      //     ),
      //   ),

      );
}
