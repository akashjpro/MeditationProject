import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';

class Welcome extends StatelessWidget {
  // const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Color(0xff8E97FD),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _logo(context),
            _comBoTex(size),
            _backGround(context, size)
          ],
        ),
      ),
    );
  }

  Widget _comBoTex(Size size) {
    return Container(
      padding: EdgeInsets.only(left:size.width*0.1159,right:size.width*0.1159, ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // height: 83,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi Afsar, Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.1,
                      color: Color(0xffFFECCC)),
                ),
                Text(
                  'to Silent Moon',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 0.1,
                      color: Color(0xffFFECCC)),
                )
              ],
            ),
          ),
          SizedBox(height: size.height*0.0167,),
          Text('Explore the app, Find some peace of mind to prepare for meditation.',textAlign: TextAlign.center,style: TextStyle(color: Color(0xffEBEAEC),fontSize: 16,fontWeight: FontWeight.w300),)
          //to Silent Moon
        ],
      ),
    );
  }

  Widget _logo(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      child: SvgPicture.asset(
        logo1,
        fit: BoxFit.fill,
        height: 30,
        width: 168,
      ),
    );
  }

  Widget _backGround(BuildContext context, Size size) {
    double height = size.height * 0.588169642857;
    return Container(
      height: height,
      child: Stack(
        children: [
          Positioned(
              child: Container(
            padding: EdgeInsets.only(bottom: 35),
            height: height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(img_bg_home), fit: BoxFit.fill)),
          )),
          Positioned(
              bottom: 0,
              child: Container(
                height: height * 0.426,
                width: size.width,
                decoration: BoxDecoration(
                  color: Color(0xff8C96FF),
                ),
              )),
          Positioned(
              bottom: height * 0.426 * 0.3,
              width: size.width,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  style: buttonStyle,
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  final ButtonStyle buttonStyle = TextButton.styleFrom(
    primary: Color(0xff3F414E),
    backgroundColor: Color(0xFFEBEAEC),
    minimumSize: Size(374, 63),
    padding: EdgeInsets.symmetric(horizontal: 20),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(38),
      ),
    ),
  );
}
