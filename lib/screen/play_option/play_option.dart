import 'package:flutter/material.dart';


import 'components/body.dart';

class PlayOption extends StatelessWidget {
  const PlayOption({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03174C),
      body: Body(),
    );
  }
  
}