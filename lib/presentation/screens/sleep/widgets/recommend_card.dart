import 'package:flutter/material.dart';
import 'package:meditation_app/core/constants/constants.dart';

class RecommendCard extends StatelessWidget {
  const RecommendCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 373,
      height: 233,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/recommend.png'),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30.0),
          Text(
            'The Ocean Moon',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: fontFamily,
              color: Color(0xFFFFE7BF),
              fontWeight: FontWeight.w600,
              fontSize: 36.0,
            ),
          ),
          SizedBox(height: 5.0),
          Container(
            constraints: BoxConstraints(maxWidth: 220.0),
            child: Text(
              'Non-stop 8- hour mixes of our most popular sleep audio',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: fontFamily,
                color: Color(0xFFF9F9FF),
                fontWeight: FontWeight.w300,
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(height: 15.0),
          TextButton(
            onPressed: () {},
            child: Text('START'),
            style: TextButton.styleFrom(
              primary: Color(0xFF3F414E),
              backgroundColor: Color(0xFFEBEAEC),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
