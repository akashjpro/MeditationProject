import 'package:flutter/material.dart';
import 'package:meditation_app/presentation/screens/meditate/models/category_item.dart';
import 'package:meditation_app/presentation/screens/meditate/widgets/category_container.dart';

class CategoriesListItem extends StatelessWidget {
  final bool isSleepScreen;
  CategoriesListItem({Key? key, required this.isSleepScreen}) : super(key: key);

  // use state management to handle isActive later
  final List<CategoryItem> categories = [
    CategoryItem(
        iconPath: 'assets/icons/all.svg', label: 'Home', isActive: true),
    CategoryItem(iconPath: 'assets/icons/my.svg', label: 'My'),
    CategoryItem(iconPath: 'assets/icons/anxious.svg', label: 'Anxious'),
    CategoryItem(iconPath: 'assets/icons/sleep.svg', label: 'Sleep'),
    CategoryItem(iconPath: 'assets/icons/kids.svg', label: 'Kids'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (_, i) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: CategoryContainer(
            categoryItem: categories[i],
            isSleepScreen: isSleepScreen,
          ),
        ),
      ),
    );
  }
}
