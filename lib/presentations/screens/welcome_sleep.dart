import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeSleep extends StatelessWidget {
  _buildButton(
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

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/welcome_sleep.png'),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: w,
              height: h,
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30, bottom: 10),
                        child: Text(
                          'Wecome to Sleep',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffE6E7F2),
                              letterSpacing: 0.01),
                        ),
                      ),
                      Container(
                        width: 317,
                        child: Text(
                          '''Explore the new king of sleep. It uses sound and vesualization to create perfect conditions for refreshing sleep.''',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffEBEAEC),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  _buildButton(() {}, 'GET STARTED', Color(0xff8E97FD),
                      Color(0xffF6F1FB))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
