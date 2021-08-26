import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/models/itemHome.dart';
import 'package:meditation_app/screen/home/components/custom_item.dart';
import 'package:meditation_app/screen/home/components/daily.dart';
import 'package:meditation_app/screen/uniti.dart';

import 'Combo1.dart';



class Body extends StatelessWidget {

      final List<ItemHome> listItemHome = [

    ItemHome(img_item1, 'Focus', 'MEDITATION', '3-10 MIN'),
    ItemHome(img_item2, 'Happiness', 'MEDITATION', '3-10 MIN'),
    ItemHome(img_item1, 'Focus', 'MEDITATION', '3-10 MIN')
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Logo(),
          combotext(context, 40),
          Combo2(context, size),
          Padding(padding: EdgeInsets.only(top: 20)),
          DailyThought(),
          Padding(padding: EdgeInsets.only(top: 40)),
          textTitle(context),
          Padding(padding: EdgeInsets.only(top: 20)),
          listItem(context)
        ],
      ),
    );
  }

  Widget combotext(BuildContext context, double top) {
    return Container(
      padding: EdgeInsets.only(top: top),
      child: Column(
        children: [
          Text(
            text1,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                color: colorText1),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            text2,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                color: colorText2),
          ),
        ],
      ),
    );
  }

  Widget Combo2(BuildContext context, Size size) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Combo1(
            title1: 'Basics',
            title2: 'COURSE',
            title3: '3-10 MIN',
            colorBG: color1,
            colorText: color4,
            colorBn: color4,
            colorTextBn: colorText1,
            linkImg: img_h1,
            size: size,
          ),
          Combo1(
            title1: 'Relaxation',
            title2: 'MUSIC',
            title3: '3-10 MIN',
            colorBG: color2,
            colorText: color5,
            colorBn: color5,
            colorTextBn: color4,
            linkImg: img_h2,
            size: size,
          )
        ],
      ),
    );
  }

  Widget textTitle(BuildContext context) {
    return Text(
      'Recomended for you',
      style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          color: Color(0xff3F414E)),
    );
  }

  Widget listItem(BuildContext context) {
    return Container(
        height: 165,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listItemHome.length,
          itemBuilder: (context,index) =>Container(
            padding: EdgeInsets.only(right: 20),
         child: CustomItem(itemHome: listItemHome[index]),
          ),
        ));
  }
}
