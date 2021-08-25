import 'package:flutter/material.dart';
import 'package:meditation_app/core/constants/constants.dart';
import 'package:meditation_app/presentation/screens/sleep/model/recommend_topic_item.dart';

class RecommendTopic extends StatelessWidget {
  final RecommendTopicItem recommendTopicItem;
  const RecommendTopic({Key? key, required this.recommendTopicItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 122.0,
          width: 177.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                recommendTopicItem.imgPath,
              ),
            ),
          ),
        ),
        SizedBox(height: 11.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recommendTopicItem.label,
              style: TextStyle(
                fontFamily: fontFamily,
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
                color: Color(0xFFE6E7F2),
              ),
            ),
            SizedBox(height: 6.5),
            Text(
              '${recommendTopicItem.duration} MIN - ${recommendTopicItem.type}',
              style: TextStyle(
                fontFamily: fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 11.0,
                color: Color(0xFF98A1BD),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
