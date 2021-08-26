import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meditation_app/models/topic.dart';

List<Topic> topics = [
  Topic(
      title: 'Reduce Stress',
      image: AssetImage('images/topic1.png'),
      bgcolor: Color(0xff808AFF),
      textcolor: Color(0xffFEF9F3)),
  Topic(
      title: 'Improve Performanee',
      image: AssetImage('images/topic2.png'),
      bgcolor: Color(0xffFA6E5A),
      textcolor: Color(0xffFEF9F3)),
  Topic(
      title: 'Increase Happiness',
      image: AssetImage('images/topic3.png'),
      bgcolor: Color(0xffFEB18F),
      textcolor: Color(0xff3F414E)),
  Topic(
      title: 'Reduce Anxiety',
      image: AssetImage('images/topic4.png'),
      bgcolor: Color(0xffFFCF86),
      textcolor: Color(0xff3F414E)),
  Topic(
      title: 'Personal Growth',
      image: AssetImage('images/topic5.png'),
      bgcolor: Color(0xff6CB28E),
      textcolor: Color(0xffFEF9F3)),
  Topic(
      title: 'Better Sleep',
      image: AssetImage('images/topic6.png'),
      bgcolor: Color(0xff7583CA),
      textcolor: Color(0xffFEF9F3)),
  Topic(
      title: 'Reduce Stress',
      image: AssetImage('images/topic7.png'),
      bgcolor: Color(0xff8E97FD),
      textcolor: Color(0xff3F414E)),
  Topic(
      title: 'Reduce Stress',
      image: AssetImage('images/topic8.png'),
      bgcolor: Color(0xffD9A5B5),
      textcolor: Color(0xff3F414E)),
];

class ChooseTopic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/choose_topic_vector.png"),
            alignment: Alignment.bottomCenter,
          )),
          child: ListView(
            children: [_titleSection(), buildGridView()],
          ),
        ),
      ),
    );
  }

  _titleSection() => Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 220,
              margin: EdgeInsets.only(bottom: 10),
              child: RichText(
                textAlign: TextAlign.left,
                maxLines: 2,
                text: TextSpan(
                    text: 'What Brings you',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        color: Color(0xff3F414E)),
                    children: [
                      TextSpan(
                          text: ' to Silent Moon?',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 28,
                              color: Color(0xff3F414E)))
                    ]),
              ),
            ),
            Text(
              'choose a topic to focuse on:',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Color(0xffA1A4B2)),
            )
          ],
        ),
      );

  List<StaggeredTile> builderSize(List<Topic> topics) {
    List<StaggeredTile> items = [];
    bool check = true;
    var n = topics.length;
    for (var i = 0; i < n; i++) {
      if (check == true) {
        items.add(StaggeredTile.extent(1, 210));
        check = false;
      } else {
        items.add(StaggeredTile.extent(1, 167));
        check = true;
      }
    }
    return items;
  }

  List<Widget> buildListTopic(List<Topic> topics) {
    var list = topics
        .map((item) => InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: item.bgcolor,
                  image: DecorationImage(
                      image: item.image, alignment: Alignment.topCenter),
                ),
                child: Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 16, bottom: 17),
                    width: 130,
                    child: Text(
                      item.title,
                      maxLines: 2,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: item.textcolor,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    )),
              ),
            ))
        .toList();
    return list;
  }

  buildGridView() => StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 16,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 10),
        physics: NeverScrollableScrollPhysics(),
        children: buildListTopic(topics),
        staggeredTiles: builderSize(topics),
      );
}
