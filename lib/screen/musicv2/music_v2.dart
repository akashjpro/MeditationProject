import 'package:flutter/material.dart';
import 'package:meditation_app/screen/musicv2/components/body.dart';

class MusicV2 extends StatefulWidget {
  const MusicV2({Key? key}) : super(key: key);

  @override
  _MusicV2State createState() => _MusicV2State();
}

class _MusicV2State extends State<MusicV2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
