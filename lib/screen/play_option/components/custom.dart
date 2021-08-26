import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomRelated extends StatelessWidget {
  final String img;
  final String title;
  const CustomRelated({Key? key, required this.img, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 175,
      width: size.width * 0.427536231,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.1371,
            // width: size.width * 0.427536231 ,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(img))),
          ),
          SizedBox(height: 10,),
          Text(title, style: TextStyle(color: Color(0xffE6E7F2),fontSize: 18,fontWeight: FontWeight.w700),),
          SizedBox(height: 6,),
           Row(
            children: [
              Text(
                '45 MIN',
                style: TextStyle(
                    fontSize: 11,
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
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff98A1BD),
                    letterSpacing: 1),
              ),
            ],
          ),
    
        ],
      ),
    );
  }
}
