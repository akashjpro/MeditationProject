import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/models/itemHome.dart';

class CustomItem extends StatelessWidget {

  final ItemHome itemHome;
  const CustomItem(
      { required this.itemHome,

      })
      : super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 161,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 113.5,
              width: 162,
              decoration: BoxDecoration(
                color: Color(0xffAFDBC5),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(itemHome.uriImage), alignment: Alignment.center),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.5)),
            Text(
              itemHome.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: color5,
                letterSpacing: 1,
                fontStyle: FontStyle.normal,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 6)),
            Row(
              children: [
                Text(
                  itemHome.text1,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: color5,
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
                  itemHome.text2,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: color5,
                    letterSpacing: 1,
                    fontStyle: FontStyle.normal,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
