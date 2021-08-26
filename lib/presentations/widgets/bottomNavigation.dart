import 'package:flutter/material.dart';

myBottomNavigationBar() {
  return BottomNavigationBar(
    elevation: 0,
    currentIndex: 1,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Color(0xff03174C),
    showSelectedLabels: true,
    selectedItemColor: Color(0xff8E97FD),
    selectedLabelStyle: TextStyle(
      color: Color(0xffE6E7F2),
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    unselectedLabelStyle: TextStyle(
      color: Color(0xff98A1BD),
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    items: [
      customNavigationBarItem(
          image: Image.asset('images/icon_home.png'), label: 'Home'),
      customNavigationBarItem(
          image: Image.asset('images/icon_sleep.png'), label: 'Sleep'),
      customNavigationBarItem(
          image: Image.asset('images/icon_meditate.png'), label: 'Meditate'),
      customNavigationBarItem(
          image: Image.asset('images/icon_music.png'), label: 'Music'),
      customNavigationBarItem(
          image: Image.asset('images/icon_user.png'), label: 'User'),
    ],
  );
}

BottomNavigationBarItem customNavigationBarItem(
    {required Image image, required String label}) {
  return BottomNavigationBarItem(
    icon: Container(
      height: 46.0,
      width: 46.0,
      child: Container(
        height: 20.0,
        width: 20.0,
        child: image,
      ),
    ),
    label: label,
    activeIcon: Container(
      height: 46.0,
      width: 46.0,
      decoration: BoxDecoration(
        color: Color(0xFF8E97FD),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Container(height: 20.0, width: 20.0, child: image),
    ),
  );
}
