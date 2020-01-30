import 'package:auto_route/auto_route_annotations.dart';
import 'package:muze/root.dart';
import 'package:muze/screens/bottomTabs/home/pages/no_ui_screen.dart';
import 'package:muze/screens/bottomTabs/home/pages/view_all_screen.dart';
import 'package:muze/screens/main/main_screen.dart';
import 'package:muze/screens/onboarding/pages/customize_screen.dart';

@autoRouter
class $Router {
  @initial
  RootScreen rootScreen;
  CustomizeScreen customizeScreen;
  MainScreen mainScreen;
  NoUIScreen noUIScreen;
  ViewAllScreen viewAllScreen;
}
