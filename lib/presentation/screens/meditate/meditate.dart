import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/core/constants/constants.dart';
import 'package:meditation_app/core/themes/theme.dart';
import 'package:meditation_app/presentation/screens/meditate/models/category_item.dart';
import 'package:meditation_app/presentation/screens/meditate/models/custom_card_item.dart';
import 'package:meditation_app/presentation/screens/meditate/widgets/category_container.dart';
import 'package:meditation_app/presentation/screens/meditate/widgets/custom_card.dart';

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
  // use state management to handle isActive later
  final List<CategoryItem> categories = [
    CategoryItem(
        iconPath: 'assets/icons/all.svg', label: 'Home', isActive: true),
    CategoryItem(iconPath: 'assets/icons/my.svg', label: 'My'),
    CategoryItem(iconPath: 'assets/icons/anxious.svg', label: 'Anxious'),
    CategoryItem(iconPath: 'assets/icons/sleep.svg', label: 'Sleep'),
    CategoryItem(iconPath: 'assets/icons/kids.svg', label: 'Kids'),
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
    } else {
      return Container(color: kPrimaryColor);
    }
  }

  List<StaggeredTile> _builderSize() {
    List<StaggeredTile> items = [];
    bool flag = true;
    for (int i = 0; i < cards.length; i++) {
      if (flag) {
        items.add(StaggeredTile.extent(1, 210));
        flag = false;
      } else {
        items.add(StaggeredTile.extent(1, 167));
        flag = true;
      }
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: route(),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildBottomNavigationBar() {
    return BottomNavigationBar(
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
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
          Container(
            width: double.infinity,
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (_, i) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: CategoryContainer(
                  categoryItem: categories[i],
                ),
              ),
            ),
          ),
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
    );
  }
}
