import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meditation_app/core/constants/constants.dart';
import 'package:meditation_app/core/themes/theme.dart';
import 'package:meditation_app/presentation/screens/meditate/models/custom_card_item.dart';
import 'package:meditation_app/presentation/screens/meditate/widgets/custom_card.dart';
import 'package:meditation_app/presentation/screens/shared/widgets/categories_item.dart';
import 'package:meditation_app/presentation/screens/sleep/sleep.dart';

import 'widgets/daily.dart';

class MeditateScreen extends StatefulWidget {
  const MeditateScreen({Key? key}) : super(key: key);

  @override
  _MeditateScreenState createState() => _MeditateScreenState();
}

class _MeditateScreenState extends State<MeditateScreen> {
  final List<BottomNavigationBarItem> _bottomNavigationBarItem = [
    customNavigationBarItem(iconPath: 'assets/icons/home.svg', label: 'Home'),
    customNavigationBarItem(
        iconPath: 'assets/icons/sleep_bottom.svg', label: 'Sleep'),
    customNavigationBarItem(
        iconPath: 'assets/icons/meditate.svg', label: 'Meditate'),
    customNavigationBarItem(iconPath: 'assets/icons/music.svg', label: 'Music'),
    customNavigationBarItem(iconPath: 'assets/icons/user.svg', label: 'Afsar'),
  ];

  final List<CustomCardItem> cards = [
    CustomCardItem(
      imgPath: "assets/images/category_bg_1.png",
      label: '7 Days of Calm',
    ),
    CustomCardItem(
      imgPath: "assets/images/category_bg_2.png",
      label: 'Anxies Release',
    ),
    CustomCardItem(
      imgPath: "assets/images/category_bg_4.png",
      label: '',
    ),
    CustomCardItem(
      imgPath: "assets/images/category_bg_3.png",
      label: '',
    ),
  ];

  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  route() {
    if (_selectedIndex == 2) {
      return _buildExampleMeditateRoute();
    } else if (_selectedIndex == 1) {
      return SleepScreen();
    } else {
      return Container(color: kPrimaryColor);
    }
  }

  List<StaggeredTile> _builderSize() {
    List<StaggeredTile> items = [];
    for (int i = 0; i < cards.length; i++) {
      items.add(StaggeredTile.extent(1, i % 2 == 0 ? 210 : 167));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: _selectedIndex != 1 ? Colors.white : Color(0xFF03174D),
      body: SingleChildScrollView(
        child: route(),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: _selectedIndex != 1 ? Colors.white : Color(0xFF03174D),
      items: _bottomNavigationBarItem,
      selectedItemColor: kPrimaryColor,
      iconSize: 21.0,
      currentIndex: _selectedIndex,
      showUnselectedLabels: true,
      unselectedFontSize: 14.0,
      unselectedItemColor: kPrimaryColor,
      onTap: _onItemTapped,
    );
  }

  _buildExampleMeditateRoute() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Meditate',
                style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              constraints: BoxConstraints(maxWidth: 350.0),
              child: Text(
                'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFFA1A4B2),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            CategoriesListItem(isSleepScreen: false),
            SizedBox(height: 25.0),
            // daily
            Daily(),
            SizedBox(height: 15.0),
            StaggeredGridView.count(
              shrinkWrap: true,
              mainAxisSpacing: 16,
              crossAxisSpacing: 8,
              crossAxisCount: 2,
              children: List.generate(
                cards.length,
                (index) => CustomCard(customCardItem: cards[index]),
              ),
              staggeredTiles: _builderSize(),
            ),
          ],
        ),
      ),
    );
  }
}
