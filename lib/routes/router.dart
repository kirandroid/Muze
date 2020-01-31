import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route/transitions_builders.dart';
import 'package:muze/root.dart';
import 'package:muze/screens/bottomTabs/home/pages/no_ui_screen.dart';
import 'package:muze/screens/bottomTabs/home/pages/player_screen.dart';
import 'package:muze/screens/bottomTabs/home/pages/view_all_screen.dart';
import 'package:muze/screens/main/main_screen.dart';
import 'package:muze/screens/onboarding/pages/customize_screen.dart';

@autoRouter
class $Router {
  @initial
  RootScreen rootScreen;
  CustomizeScreen customizeScreen;
  @CustomRoute(
    transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    durationInMilliseconds: 200,
  )
  MainScreen mainScreen;
  @CustomRoute(
    transitionsBuilder: TransitionsBuilders.slideRightWithFade,
    durationInMilliseconds: 200,
  )
  NoUIScreen noUIScreen;
  ViewAllScreen viewAllScreen;
  @CustomRoute(
    transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    durationInMilliseconds: 200,
  )
  PlayerScreen playerScreen;
}
