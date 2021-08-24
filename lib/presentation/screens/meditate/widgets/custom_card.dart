import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/core/constants/constants.dart';
import 'package:meditation_app/presentation/screens/meditate/models/custom_card_item.dart';

class CustomCard extends StatelessWidget {
  final CustomCardItem customCardItem;
  const CustomCard({Key? key, required this.customCardItem}) : super(key: key);
// need better flexible solution
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(customCardItem.imgPath),
            // fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: 15.0),
          child: Text(
            customCardItem.label,
            style: TextStyle(
                fontFamily: fontFamily,
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
