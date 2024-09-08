import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/advanced_level_screen/advanced_level_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/loged_in_level_select_screen/loged_in_level_select_screen.dart';
import '../presentation/mode_screen/mode_screen.dart';
import '../presentation/register_screen/register_screen.dart';
import '../presentation/news_1_screen/news_1_screen.dart';
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

  static const String news1Screen = '/news_1_screen';

  static Map<String, WidgetBuilder> oldRoutes = {
    initialRouteAuthorized: (context) => LogedInLevelSelectScreen(),
    initialRoute: (context) => StartScreen1Screen()
  };

  static Map<String, RoutePageBuilder> routes = {
    registerScreen: (context, animation, secondaryAnimation) =>
        RegisterScreen(),
    startScreen2Screen: (context, animation, secondaryAnimation) =>
        StartScreen2Screen(),
    startScreen3Screen: (context, animation, secondaryAnimation) =>
        StartScreen3Screen(),
    modeScreen: (context, animation, secondaryAnimation) => ModeScreen(),
    advancedLevelScreen: (context, animation, secondaryAnimation) =>
        AdvancedLevelScreen(),
    appNavigationScreen: (context, animation, secondaryAnimation) =>
        AppNavigationScreen(),
    initialRouteAuthorized: (context, animation, secondaryAnimation) =>
        LogedInLevelSelectScreen(),
    startScreen1Screen: (context, animation, secondaryAnimation) =>
        StartScreen1Screen(),
    news1Screen: (context, animation, secondaryAnimation) => News1Screen(),
    initialRoute: (context, animation, secondaryAnimation) =>
        StartScreen1Screen()
  };
}
