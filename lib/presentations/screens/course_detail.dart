import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CourseDetailState();
  }
}

class CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'images/course_detail.png',
                  fit: BoxFit.fitWidth,
                ),
                SafeArea(
                  child: _appBarSection(),
                ),
              ],
            ),
            _titleSection(),
            _tabSection(),
          ],
        ),
      ),
    );
  }

  _buildLeadingButton(
      VoidCallback action, IconData icon, Color bgcolor, Color iconColor) {
    return ElevatedButton(
      onPressed: action,
      child: Icon(icon, color: iconColor),
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(), primary: bgcolor, padding: EdgeInsets.all(15)),
    );
  }

  _appBarSection() => Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.topLeft,
              child: _buildLeadingButton(() {}, Icons.arrow_back,
                  Color(0xffFf2f2f2), Color(0xff3F414E)),
            )),
            _buildLeadingButton(() {}, Icons.favorite,
                Color(0xff03174C).withOpacity(0.5), Color(0xffe6e7f2)),
            _buildLeadingButton(() {}, Icons.download,
                Color(0xff03174C).withOpacity(0.5), Color(0xffe6e7f2))
          ],
        ),
      );
  _buildReport(Icon icon, String title) => Row(
        children: [
          icon,
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xffA1A4B2)),
          )
        ],
      );
  _titleSection() => Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Happy Morning',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                  color: Color(0xff3F414E)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'COURSE',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.05,
                  color: Color(0xffA1A4B2)),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              width: 315,
              child: Text(
                '''Ease the mind into a restful night’s sleep  with these deep, amblent tones.''',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    letterSpacing: 0.05,
                    color: Color(0xffA1A4B2)),
              ),
            ),
            Container(
              width: 315,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildReport(
                      Icon(
                        Icons.favorite,
                        color: Color(0xffFF84A2),
                      ),
                      '24.234 Favorits'),
                  _buildReport(
                      Icon(
                        Icons.headphones,
                        color: Color(0xff7FD2F2),
                      ),
                      '34.234 Lestening')
                ],
              ),
            )
          ],
        ),
      );
  _tabSection() => Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pick a Nnrrator',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff3F414E),
              ),
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    indicator: UnderlineTabIndicator(
                        borderSide:
                            BorderSide(width: 3.0, color: Color(0xff8E97FD)),
                        insets: EdgeInsets.symmetric(horizontal: 60.0)),
                    tabs: [
                      Tab(
                          child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'MALE VOICE',
                          style: TextStyle(
                              color: Color(0xff8E97FD),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      )),
                      Tab(
                          child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'FEMALE VOICE',
                          style: TextStyle(
                              color: Color(0xff8E97FD),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 200,
                    child: TabBarView(
                      children: [
                        ListView(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          children: [
                            _buildMusicPlay('Focus Attention', '10 MIN', true),
                            _buildMusicPlay('Focus Attention', '10 MIN', false),
                            _buildMusicPlay('Focus Attention', '10 MIN', false),
                          ],
                        ),
                        ListView(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          children: [
                            _buildMusicPlay('Focus Attention', '5 MIN', false),
                            _buildMusicPlay('Focus Attention', '10 MIN', false),
                            _buildMusicPlay('Focus Attention', '15 MIN', false),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
  _buildMusicPlay(String name, String time, bool playing) => ListTile(
        leading: _buildPlayButton(playing),
        title: Text(
          name,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff3F414E)),
        ),
        subtitle: Text(
          time,
          style: TextStyle(
              fontSize: 11,
              letterSpacing: 0.05,
              fontWeight: FontWeight.w500,
              color: Color(0xffA1A4B2)),
        ),
      );
  _buildPlayButton(bool playing) {
    return ElevatedButton(
      onPressed: () {},
      child: Icon(Icons.play_arrow,
          color: playing ? Color(0xffF6F1FB) : Color(0xffA1A4B2)),
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(
              side: BorderSide(
                  color: playing ? Color(0xffF6F1FB) : Color(0xffA1A4B2))),
          primary: playing ? Color(0xff8E97FD) : Color(0xffffffff),
          padding: EdgeInsets.all(15)),
    );
  }
}
