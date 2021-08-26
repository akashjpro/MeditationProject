import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';

class SignUpAndSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _freame(context, size),
            Padding(padding: EdgeInsets.only(top: size.height * 0.03348214)),
            _text(context, size),
            Padding(padding: EdgeInsets.only(top: size.height * 0.06919642)),
            _signUp(context, size)
          ],
        ),
      ),
    );
  }

  Widget _freame(BuildContext context, Size size) {
    return Container(
      height: size.height * 0.56,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(img_bg_sign), fit: BoxFit.fitWidth)),
      child: Column(
        children: [
          _logo(context, size),
          SizedBox(
            height: size.height * 0.0892857142857143,
          ),
          _image(context, size),
        ],
      ),
    );
  }

  Widget _logo(BuildContext context, Size size) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 51),
      child: SvgPicture.asset(
        logo,
        height: size.height * 0.03348214,
        width: size.width * 0.4492753623,
      ),
    );
  }

  Widget _image(BuildContext context, Size size) {
    return Container(
        height: size.height * 0.270859375,
        width: size.width * 0.8024637,
        padding: EdgeInsets.only(
            left: size.width * 0.098285, right: size.width * 0.098285),
        alignment: Alignment.center,
        child:
            Image(image: AssetImage(img_frame_sign), fit: BoxFit.fill));
  }

  Widget _text(BuildContext context, Size size) {
    return Container(
      padding:
          EdgeInsets.only(left: size.width * 0.14, right: size.width * 0.14),
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            'We are what we do',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(
            height: size.height * 0.0167,
          ),
          Text(
            'Thousand of people are usign silent moon',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _signUp(BuildContext context, Size size) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          bottom: size.height * 0.1049,
          right: size.width * 0.0483,
          left: size.width * 0.0483,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                style: flatButtonSignInStyle,
                onPressed: null,
                child: Text('SIGN UP')),
            SizedBox(
              height: size.height * 0.02232,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ALREADY HAVE AN ACCOUNT?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    )),
                _logIn(context)
              ],
            )
          ],
        ));
  }

  Widget _logIn(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          'LOG IN',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ));
  }

  //============================================================
  // ====================== Style Custom =======================
  //============================================================

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
}
