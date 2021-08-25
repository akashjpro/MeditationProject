import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/core/constants/constants.dart';
import 'package:meditation_app/presentation/screens/shared/widgets/custom_navigate_button.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  double _currentSliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03174C),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/music_bg.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomNavigateButton(
                            iconPath: 'assets/icons/x.svg',
                            color: Color(0xFFE6E7F2)),
                        Row(
                          children: [
                            CustomNavigateButton(
                                iconPath: 'assets/icons/heart.svg',
                                color: Color(0xFF03174C)),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: CustomNavigateButton(
                                  iconPath: 'assets/icons/download.svg',
                                  color: Color(0xFF03174C)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(flex: 1),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Night Island',
                              style: TextStyle(
                                  color: Color(0xFFE6E7F2),
                                  fontFamily: fontFamily,
                                  fontSize: 34.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'SLEEP MUSIC',
                              style: TextStyle(
                                  color: Color(0xFF98A1BD),
                                  fontFamily: fontFamily,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child:
                                  SvgPicture.asset('assets/icons/back_15s.svg'),
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.transparent),
                            ),
                            InkWell(
                              customBorder: CircleBorder(),
                              onTap: () {
                                print('Play tapped.');
                              },
                              child: Container(
                                width: 110.0,
                                height: 110.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE6E7F2)
                                      .withOpacity(0.25), // border color
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                    'assets/icons/pause_button.svg'), // inner content
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: SvgPicture.asset(
                                  'assets/icons/foward_15s.svg'),
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.transparent),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SliderTheme(
                              data: SliderThemeData(
                                  activeTrackColor: Color(0xFFE6E7F2),
                                  thumbColor: Color(0xFF8E97FD),
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10)),
                              child: Slider(
                                value: _currentSliderValue.toDouble(),
                                min: 0.0,
                                max: 100.0,
                                //activeColor: Color(0xFFE6E7F2),
                                inactiveColor: Color(0xFF47557E),
                                onChanged: (double value) {
                                  setState(() {
                                    _currentSliderValue = value;
                                  });
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '1:30',
                                  style: TextStyle(
                                      color: Color(0xFFE6E7F2),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '45:00',
                                  style: TextStyle(
                                      color: Color(0xFFE6E7F2),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(flex: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
