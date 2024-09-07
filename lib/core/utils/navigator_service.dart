import 'package:flutter/material.dart';
import '../app_export.dart';
import '../../routes/app_routes.dart';

// ignore_for_file: must_be_immutable
class NavigatorService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // This way we had blinking
  static Future<dynamic> pushNamedDeprecated(
    String routeName, {
    dynamic arguments,
  }) async {
    return navigatorKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }

  static Future<dynamic> pushNamed(
      String routeName, BuildContext context) async {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: AppRoutes.routes[routeName]!,
        transitionDuration: Duration.zero, // Disables the transition animation
        reverseTransitionDuration:
            Duration.zero, // Disables reverse transition animation
      ),
    );
  }

  static void goBack(BuildContext context) {
    Navigator.of(context).pop();
    //return navigatorKey.currentState?.pop();
  }

  static Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    bool routePredicate = false,
    dynamic arguments,
  }) async {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(
        routeName, (route) => routePredicate,
        arguments: arguments);
  }

  static Future<dynamic> popAndPushNamed(
    String routeName, {
    dynamic arguments,
  }) async {
    return navigatorKey.currentState
        ?.popAndPushNamed(routeName, arguments: arguments);
  }
}
