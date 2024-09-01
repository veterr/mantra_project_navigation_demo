import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/advanced_level_screen/advanced_level_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/loged_in_level_select_screen/loged_in_level_select_screen.dart';
import '../presentation/mode_screen/mode_screen.dart';
import '../presentation/register_screen/register_screen.dart';
import '../presentation/start_screen_1_screen/start_screen_1_screen.dart';
import '../presentation/start_screen_2_screen/start_screen_2_screen.dart';
import '../presentation/start_screen_3_screen/start_screen_3_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String registerScreen = '/register_screen';

  static const String startScreen1Screen = '/start_screen_1_screen';

  static const String startScreen2Screen = '/start_screen_2_screen';

  static const String startScreen3Screen = '/start_screen_3_screen';

  static const String modeScreen = '/mode_screen';

  static const String logedInLevelSelectScreen =
      '/loged_in_level_select_screen';

  static const String advancedLevelScreen = '/advanced_level_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static const String initialRouteAuthorized = '/loged_in_level_select_screen';

  static Map<String, WidgetBuilder> routes = {
    registerScreen: (context) => RegisterScreen(),
    startScreen2Screen: (context) => StartScreen2Screen(),
    startScreen3Screen: (context) => StartScreen3Screen(),
    modeScreen: (context) => ModeScreen(),
    advancedLevelScreen: (context) => AdvancedLevelScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRouteAuthorized: (context) => LogedInLevelSelectScreen(),
    startScreen1Screen: (context) => StartScreen1Screen(),
    initialRoute: (context) => StartScreen1Screen()
  };
}
