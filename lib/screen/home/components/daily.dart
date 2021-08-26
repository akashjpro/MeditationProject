import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class DailyThought extends StatelessWidget {
  const DailyThought({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      height: 95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color3,
          image: DecorationImage(
              image: AssetImage(img_bg_daily), fit: BoxFit.fill)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daily Thought',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Text(
                    'MEDITATION',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 2, right: 2),
                    child: SvgPicture.asset(
                      'images/cham.svg',
                      height: 3,
                      width: 3,
                    ),
                  ),
                  Text(
                    '3-10 MIN',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: IconButton(
              icon: SvgPicture.asset(icon_play,height: 40,width: 40,fit: BoxFit.fill,),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
