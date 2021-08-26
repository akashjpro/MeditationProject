import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/signup_vector.png"),
              alignment: Alignment.topCenter),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            _buildLeadingButton(),
            _titleSection(),
            _loginWithSection(),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 40, bottom: 40),
              child: Text(
                'OR LOG IN WITH EMAIL',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xffA1A4B2),
                    fontSize: 14,
                    letterSpacing: 0.05),
              ),
            ),
            _inputSection(),
            _buttonSection(),
            _signUpSection()
          ],
        ),
      ),
    );
  }

  _buildLeadingButton() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      alignment: Alignment.topLeft,
      child: ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back, color: Colors.black),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            primary: Colors.white,
            padding: EdgeInsets.all(15)),
      ),
    );
  }

  _titleSection() => Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'Welcome Back!',
          style: TextStyle(
              fontFamily: 'Helvetica',
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Color(0xff3f414e)),
        ),
      );

  _buildLoginWithButton(String title, Image icon, Color color,
      Color borderColor, Color textColor, VoidCallback action) {
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38),
              side: BorderSide(color: borderColor))),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Row(
          children: [
            icon,
            Expanded(
                child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ))
          ],
        ),
      ),
    );
  }

  _loginWithSection() => Column(
        children: [
          _buildLoginWithButton(
              'CONTINUE WITH FACEBOOK',
              Image.asset('images/fb_icon.png'),
              Color(0xff7583CA),
              Color(0xff7583CA),
              Color(0xffF6F1FB),
              () {}),
          SizedBox(
            height: 20,
          ),
          _buildLoginWithButton(
              'CONTINUE WITH GOOGLE',
              Image.asset('images/gg_icon.png'),
              Color(0xffFFFFFF),
              Color(0xffEBEAEC),
              Color(0xff3F414E),
              () {}),
        ],
      );
  _buildInputSignUp(String title, TextInputType type) => TextField(
        obscureText: type == TextInputType.visiblePassword ? true : false,
        keyboardType: type,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffF2F3F7),
            hintText: title,
            hintStyle: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                letterSpacing: 0.05,
                color: Color(0xffa1a4b2)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Color(0xffF2F3F7))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Color(0xffF2F3F7)))),
      );
  _inputSection() => Column(
        children: [
          _buildInputSignUp('Email address', TextInputType.emailAddress),
          SizedBox(
            height: 20,
          ),
          _buildInputSignUp('Password', TextInputType.visiblePassword),
        ],
      );
  _buildButtonSignUp(
      VoidCallback action, String title, Color bgColor, Color textColor) {
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 60),
          primary: bgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38),
              side: BorderSide(color: bgColor))),
      child: Container(
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              letterSpacing: 0.05,
              color: textColor,
              fontSize: 14),
        ),
      ),
    );
  }

  _buildButtonForgotPass(VoidCallback action, String title) {
    return TextButton(
        onPressed: action,
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              letterSpacing: 0.05,
              color: Color(0xff3F414E),
              fontSize: 14),
        ));
  }

  _buttonSection() => Column(
        children: [
          SizedBox(
            height: 30,
          ),
          _buildButtonSignUp(
              () {}, 'LOG IN', Color(0xff8E97FD), Color(0xffF6F1FB)),
          _buildButtonForgotPass(() {}, 'Forgot Password')
        ],
      );
  _signUpSection() => Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(top: 30, bottom: 10),
        child: RichText(
          text: TextSpan(
            text: 'ALREADY HAVE AN ACCOUNT? ',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.05,
                color: Color(0xffA1A4B2)),
            children: [
              TextSpan(
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.05,
                      color: Color(0xff9199fd)),
                  text: 'SIGN UP')
            ],
          ),
        ),
      );
}
