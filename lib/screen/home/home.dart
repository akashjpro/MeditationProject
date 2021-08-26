import 'package:flutter/material.dart';
import 'package:meditation_app/components/bottom_nav_bar.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/models/itemHome.dart';

import 'components/body.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int _selectedItem = 0;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        color: Colors.white,
        child: Body(),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [icon_home,icon_sleep,icon_meditate,icon_music,icon_afsar],
        onChange: (int) {
          setState(() {
            _selectedItem = int;
          });
        },
        title: ['Home','Sleep','Meditate','Music','Afsar'],
      ),
    );
  }
}
