import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final String? iconPath;
  final Function() function;
  final Color textColor;
  const CustomButton(
      {Key? key,
      required this.title,
      required this.color,
      this.iconPath = '',
      required this.function,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(374.0, 63.0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(color),
          foregroundColor: MaterialStateProperty.all(Color(0xFFF6F1FB)),
        ),
        onPressed: function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconPath! != '' ? SvgPicture.asset(iconPath!) : Container(),
            SizedBox(width: 45.0),
            Text(
              title,
              style: TextStyle(
                color: textColor,
                fontFamily: 'HelveticaNeue',
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
              ),
            ),
            SizedBox(width: 34.0),
          ],
        ),
      ),
    );
  }
}
