import 'package:flutter/material.dart';
import 'package:meditation_app/presentations/screens/choose_topic.dart';
import 'package:meditation_app/presentations/screens/course_detail.dart';
import 'package:meditation_app/presentations/screens/sign_up.dart';
import 'package:meditation_app/presentations/screens/sleep_music.dart';
import 'package:meditation_app/presentations/screens/welcome_sleep.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Helvetica'),
      home: SleepMusic(),
    );
  }
}
