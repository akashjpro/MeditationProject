import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/screen/play_option/components/custom.dart';
import 'package:meditation_app/screen/uniti.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(


      child: Column(
        children: [
          KeepAlive(
            keepAlive: false,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage(img_bg_healder),
                        fit: BoxFit.fill,
                        alignment: Alignment.center),
                  ),
                ),
                SafeArea(child: customAppbar()),
              ],
            ),
          ),
          comBoView(size)
        ],
      ),
    );
  }

  Widget comBoView(Size size) {
    return Column(
      children: [
        comBoText(),
        Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
            height: 1,
            child: Opacity(
              opacity: 0.3,
              child: Divider(
                color: Color(0xff98A1BD),
              ),
            )),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 63),
          alignment: Alignment.topLeft,
          child: Text(
            'Related',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Color(0xffE6E7F2)),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomRelated(img: image_test1, title: 'Moon Clouds'),
              CustomRelated(img: image_test2, title: 'Sweet Sleep'),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 32),
          child: TextButton(
            style: flatButtonSignInStyle,
            child: Text(
              'PLAY',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffF6F1FB)),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  final ButtonStyle flatButtonSignInStyle = TextButton.styleFrom(
    primary: Colors.white,
    backgroundColor: Color(0xFF8E97FD),
    minimumSize: Size(374, 63),
    padding: EdgeInsets.symmetric(horizontal: 20),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(38),
      ),
    ),
  );
  Widget comBoText() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Night Island',
            style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Color(0xffE6E7F2)),
          ),
          SizedBox(
            height: 15.37,
          ),
          Row(
            children: [
              Text(
                '45 MIN',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff98A1BD),
                    letterSpacing: 1),
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
                'SLEEP MUSIC',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff98A1BD),
                    letterSpacing: 1),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Ease the mind into a restful night’s sleep with these deep, amblent tones.',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff98A1BD),
                letterSpacing: 1),
          ),
          SizedBox(
            height: 30.5,
          ),
          Row(
            children: [
              Row(
                children: [
                  SvgPicture.asset(icon_heart),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '24.234 Favorits',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff98A1BD),
                        letterSpacing: 1),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  SvgPicture.asset(icon_earphone),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '34.234 Lestening',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff98A1BD),
                        letterSpacing: 1),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget customAppbar() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: CustomAppBarButton(
              color: Color(0xffE6E7F2),
              icon: icon_Back,
              opacity: 0.9,
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: CustomAppBarButton(
                  icon: icon_like,
                  color: Color(0xff03174C),
                  opacity: 0.5,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 15)),
              InkWell(
                onTap: () {},
                child: CustomAppBarButton(
                  color: Color(0xff03174C),
                  icon: icon_dowload,
                  opacity: 0.5,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
