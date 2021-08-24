import 'package:flutter/material.dart';
import 'package:meditation_app/core/themes/theme.dart';
import 'package:meditation_app/presentation/router/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mediation',
      // theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.dartTheme,
      debugShowCheckedModeBanner: false,
      // replace init route here
      initialRoute: AppRouter.reminders,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
