import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/core/constants/constants.dart';

class AppTheme {
  const AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final ThemeData dartTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

BottomNavigationBarItem customNavigationBarItem(
    {required String iconPath, required String label}) {
  return BottomNavigationBarItem(
    icon: Container(
      height: 46.0,
      width: 46.0,
      child: Container(
        height: 20.0,
        width: 20.0,
        child: SvgPicture.asset(
          iconPath,
          fit: BoxFit.none,
        ),
      ),
    ),
    label: label,
    activeIcon: Container(
      height: 46.0,
      width: 46.0,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Container(
        height: 20.0,
        width: 20.0,
        child: SvgPicture.asset(
          iconPath,
          color: Colors.white,
          fit: BoxFit.none,
        ),
      ),
    ),
  );
}
