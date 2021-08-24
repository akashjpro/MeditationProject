// We use name route
// All our routes will be available here
import 'package:flutter/material.dart';
import 'package:meditation_app/core/exceptions/route_exception.dart';
import 'package:meditation_app/presentation/screens/meditate/meditate.dart';
import 'package:meditation_app/presentation/screens/reminders/reminders_screen.dart';
import 'package:meditation_app/presentation/screens/sign_up/sign_up_screen.dart';

class AppRouter {
  // static const String home = '/';
  // replace '/signup' here when have default route such as home.
  static const String signUp = '/signup';
  static const String reminders = '/reminders';
  static const String meditation = '/';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case signUp:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case reminders:
        return MaterialPageRoute(builder: (_) => RemindersScreen());
      case meditation:
        return MaterialPageRoute(builder: (_) => MeditateScreen());
      default:
        throw const RouteException('Route not found!');
    }
  }
}
