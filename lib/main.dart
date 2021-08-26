import 'package:flutter/material.dart';
import 'package:meditation_app/screen/home/home.dart';
import 'package:meditation_app/screen/musicv2/music_v2.dart';
import 'package:meditation_app/screen/play_option/play_option.dart';
import 'package:meditation_app/screen/sign_up_sign_in/sign_up_and_sign_in.dart';
import 'package:meditation_app/screen/welcome/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context) => Welcome()
      },
    );
  }
}
