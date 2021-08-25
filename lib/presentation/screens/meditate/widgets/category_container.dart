import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:meditation_app/core/constants/constants.dart';
import 'package:meditation_app/presentation/screens/meditate/models/category_item.dart';

class CategoryContainer extends StatelessWidget {
  final CategoryItem categoryItem;
  final bool isSleepScreen;
  const CategoryContainer({
    Key? key,
    required this.categoryItem,
    required this.isSleepScreen,
  }) : super(key: key);

  Color _checkColor() {
    if (categoryItem.isActive! && isSleepScreen) {
      return Colors.white;
    } else if (categoryItem.isActive! && !isSleepScreen) {
      return Color(0xFF3F414E);
    } else {
      return Color(0xFFA0A3B1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.0,
      height: 92.0,
      child: Column(
        children: [
          Container(
            height: 65.0,
            width: 65.0,
            decoration: BoxDecoration(
              color: categoryItem.isActive! ? kPrimaryColor : Color(0xFFA0A3B1),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: SvgPicture.asset(categoryItem.iconPath, fit: BoxFit.none),
          ),
          SizedBox(height: 10.0),
          Text(
            categoryItem.label,
            style: TextStyle(
                fontSize: 14.0,
                fontFamily: fontFamily,
                fontWeight: FontWeight.w400,
                color: _checkColor()),
          ),
        ],
      ),
    );
  }
}
