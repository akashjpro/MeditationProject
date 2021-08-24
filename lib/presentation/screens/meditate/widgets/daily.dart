import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:charcode/charcode.dart";
import 'package:meditation_app/core/constants/constants.dart';

class Daily extends StatelessWidget {
  const Daily({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.0,
      width: 374.0,
      decoration: BoxDecoration(
        color: Color(0xFFF1DDCF),
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage('assets/images/dailyc_bg.png'),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Daily Calm',
                style: TextStyle(
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'ARP 30 - PAUSE PRACTICE',
                style: TextStyle(
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.w400,
                  fontSize: 11.0,
                  color: Color(0xFF5A6175),
                ),
              ),
            ],
          ),
          ClipOval(
            child: InkWell(
              onTap: () {
                print('tapped played.');
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF3F414E),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset('assets/icons/play.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
