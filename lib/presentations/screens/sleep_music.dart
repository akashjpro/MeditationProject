import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/models/sleep_music.dart';
import 'package:meditation_app/presentations/widgets/bottomNavigation.dart';

class SleepMusic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SleepMusicState();
  }
}

class SleepMusicState extends State<SleepMusic> {
  List<Music> musics = [
    Music(
        name: 'Night Island',
        album: 'SLEEP MUCSIC',
        time: '45',
        image: Image.asset('images/sleep_music_1.png')),
    Music(
        name: 'Sweet Sleep',
        album: 'SLEEP MUCSIC',
        time: '45',
        image: Image.asset('images/sleep_music_2.png')),
    Music(
        name: 'Good Night',
        album: 'SLEEP MUCSIC',
        time: '45',
        image: Image.asset('images/sleep_music_3.png')),
    Music(
        name: 'Moon Clouds',
        album: 'SLEEP MUCSIC',
        time: '45',
        image: Image.asset('images/sleep_music_4.png')),
    Music(
        name: 'Sweet Sleep',
        album: 'SLEEP MUCSIC',
        time: '45',
        image: Image.asset('images/sleep_music_5.png')),
    Music(
        name: 'Night Island',
        album: 'SLEEP MUCSIC',
        time: '45',
        image: Image.asset('images/sleep_music_6.png')),
    Music(
        name: 'Night Island',
        album: 'SLEEP MUCSIC',
        time: '45',
        image: Image.asset('images/sleep_music_1.png')),
    Music(
        name: 'Sweer Sleep',
        album: 'SLEEP MUCSIC',
        time: '45',
        image: Image.asset('images/sleep_music_2.png')),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff03174C),
      appBar: AppBar(
        backgroundColor: Color(0xff03174C),
        elevation: 0,
        toolbarHeight: 70,
        leading: _buildLeadingButton(),
        leadingWidth: 100,
        centerTitle: true,
        title: Text(
          'Sleep Music',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xffE6E7F2)),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: _buildGridView(musics),
          ),
        ),
      ),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  _buildGridView(List<Music> musics) {
    return musics
        .map((item) => InkWell(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: item.image,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text(
                        item.name,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffE6E7F2),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '${item.time} MIN',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff98A1BD)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.circle,
                            size: 8,
                            color: Color(0xff98A1BD),
                          ),
                        ),
                        Text(
                          item.album,
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff98A1BD)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ))
        .toList();
  }

  _buildLeadingButton() {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      alignment: Alignment.topLeft,
      child: ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back, color: Colors.black),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            primary: Colors.white,
            padding: EdgeInsets.all(15)),
      ),
    );
  }
}
