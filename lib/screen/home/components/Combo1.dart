import 'dart:ui';

import 'package:flutter/material.dart';

class Combo1 extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  final Color colorBG;
  final Color colorText;
  final Color colorTextBn;
  final Color colorBn;
  final String linkImg;
  final Size size;

  const Combo1(
      {required this.title1,
        required this.title2,
        required this.title3,
        required this.colorBG,
        required this.colorText,
        required this.colorBn,
        required this.colorTextBn,
        Key? key,
        required this.linkImg,
        required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _with = size.width * 0.43;
    return InkWell(
        onTap: () {},
        child: Container(
          alignment: Alignment.topLeft,
          height: 210.0,
          width: _with,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colorBG,
            image: DecorationImage(
                image: AssetImage(linkImg), alignment: Alignment.topRight),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 85, left: 15, right: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title1,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          color: colorText,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal),
                    ),
                    Padding(padding: EdgeInsets.only(top: 9.55)),
                    Text(
                      title2,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 11,
                          color: colorText,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                    ),
                    Padding(padding: EdgeInsets.only(top: 35.86)),
                    Row(
                      children: [
                        Text(
                          title3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 11,
                              color: colorText,
                              fontWeight: FontWeight.w400,
                              // letterSpacing: 4,
                              fontStyle: FontStyle.normal),
                        ),
                        Spacer(),
                        Container(
                          height: 35,
                          width: _with*0.39,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: colorBn),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'START',
                                style: TextStyle(
                                    fontSize: 11,
                                    color: colorTextBn,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
