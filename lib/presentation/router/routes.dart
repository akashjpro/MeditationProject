// We use name route
// All our routes will be available here
import 'package:flutter/material.dart';
import 'package:meditation_app/core/exceptions/route_exception.dart';
import 'package:meditation_app/presentation/screens/sign_up/sign_up_screen.dart';

class AppRouter {
  // static const String home = '/';
  // replace '/signup' here when have default route such as home.
  static const String signUp = '/';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case signUp:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      default:
        throw const RouteException('Route not found!');
    }
  }
}
