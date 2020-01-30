// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:muze/root.dart';
import 'package:muze/screens/onboarding/pages/customize_screen.dart';
import 'package:muze/screens/main/main_screen.dart';
import 'package:muze/screens/bottomTabs/home/pages/no_ui_screen.dart';
import 'package:muze/screens/bottomTabs/home/pages/view_all_screen.dart';

class Router {
  static const rootScreen = '/';
  static const customizeScreen = '/customize-screen';
  static const mainScreen = '/main-screen';
  static const noUIScreen = '/no-ui-screen';
  static const viewAllScreen = '/view-all-screen';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<Router>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.rootScreen:
        return MaterialPageRoute(
          builder: (_) => RootScreen(),
          settings: settings,
        );
      case Router.customizeScreen:
        return MaterialPageRoute(
          builder: (_) => CustomizeScreen(),
          settings: settings,
        );
      case Router.mainScreen:
        return MaterialPageRoute(
          builder: (_) => MainScreen(),
          settings: settings,
        );
      case Router.noUIScreen:
        if (hasInvalidArgs<String>(args)) {
          return misTypedArgsRoute<String>(args);
        }
        final typedArgs = args as String;
        return MaterialPageRoute(
          builder: (_) => NoUIScreen(emoji: typedArgs),
          settings: settings,
        );
      case Router.viewAllScreen:
        if (hasInvalidArgs<ViewAllScreenArguments>(args)) {
          return misTypedArgsRoute<ViewAllScreenArguments>(args);
        }
        final typedArgs =
            args as ViewAllScreenArguments ?? ViewAllScreenArguments();
        return MaterialPageRoute(
          builder: (_) => ViewAllScreen(
              title: typedArgs.title, musicList: typedArgs.musicList),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//ViewAllScreen arguments holder class
class ViewAllScreenArguments {
  final String title;
  final List<dynamic> musicList;
  ViewAllScreenArguments({this.title, this.musicList});
}
