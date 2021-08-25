import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/core/constants/constants.dart';
import 'package:meditation_app/presentation/screens/shared/widgets/categories_item.dart';
import 'package:meditation_app/presentation/screens/sleep/model/recommend_topic_item.dart';
import 'package:meditation_app/presentation/screens/sleep/widgets/recommend_card.dart';
import 'package:meditation_app/presentation/screens/sleep/widgets/recommend_topic.dart';

class SleepScreen extends StatelessWidget {
  SleepScreen({Key? key}) : super(key: key);

  List<RecommendTopicItem> _rcmTp = [
    RecommendTopicItem(
      imgPath: 'assets/images/rcm_tp_1.png',
      label: 'Night Island',
      type: 'SLEEP MUSIC',
      duration: '45',
    ),
    RecommendTopicItem(
      imgPath: 'assets/images/rcm_tp_2.png',
      label: 'Sweet Sleep',
      type: 'SLEEP MUSIC',
      duration: '45',
    ),
    RecommendTopicItem(
      imgPath: 'assets/images/rcm_tp_3.png',
      label: 'Night Island',
      type: 'SLEEP MUSIC',
      duration: '45',
    ),
    RecommendTopicItem(
      imgPath: 'assets/images/rcm_tp_4.png',
      label: 'Night Island',
      type: 'SLEEP MUSIC',
      duration: '45',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: SvgPicture.asset('assets/images/sleep_bg.svg'),
        ),
        SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Sleep Stories',
                    style: TextStyle(
                      color: Color(0xFFE6E7F2),
                      fontFamily: fontFamily,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  constraints: BoxConstraints(maxWidth: 276.0),
                  child: Text(
                    'Soothing bedtime stories to help you fall into a deep and natural sleep',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFEBEAEC),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                CategoriesListItem(isSleepScreen: true),
                SizedBox(height: 25.0),
                RecommendCard(),
                SizedBox(height: 15.0),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                  scrollDirection: Axis.vertical,
                  children: List.generate(
                    _rcmTp.length,
                    (index) => RecommendTopic(
                      recommendTopicItem: _rcmTp[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
