import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';





class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 50),
      child: SvgPicture.asset(
        'images/logo.svg',
        fit: BoxFit.fill,
        height: 30,
        width: 168,
      ),
    );
  }
}

class CustomAppBarButton extends StatelessWidget {
  final String icon;
  final Color color;
  final double opacity;
  const CustomAppBarButton({required this.icon, required this.color, required this.opacity})
      : super();

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Opacity(opacity: opacity,
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(color: color),),
        child: SvgPicture.asset(icon),
      ),)
    );
  }
}
