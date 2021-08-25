import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigateButton extends StatelessWidget {
  final String iconPath;
  final Color color;
  const CustomNavigateButton(
      {Key? key, required this.iconPath, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          alignment: Alignment.center,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: Border.all(color: color)),
          child: SvgPicture.asset(iconPath),
        ),
      ),
    );
  }
}
