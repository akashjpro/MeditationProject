import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/screen/musicv2/components/Background.dart';
import 'package:meditation_app/screen/uniti.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _currentSliderValue = 5;
    return BackGround(
      size: size,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: buildAppBar(),
        body: Container(
          padding: EdgeInsets.only(
              left: 20, right: 20, bottom: size.height * 0.1855245535714286),
          child: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customAppbar(),
                  Column(
                    children: [
                      Text(
                        'Focus Attention',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff3F414E)),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: size.height * 0.0171540178571429)),
                      Text(
                        '7 DAYS OF CALM',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffA0A3B1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: size.height * 0.078125)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 39,
                            width: 39,
                            child: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  'images/svg/iconP15.svg',
                                  height: 39,
                                  width: 39,
                                  fit: BoxFit.fill,
                                )),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.1207729468599034)),
                          Container(
                            height: 109,
                            width: 109,
                            child: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  'images/svg/iconBtnPause.svg',
                                  height: 109,
                                  width: 109,
                                  fit: BoxFit.fill,
                                )),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.1207729468599034)),
                          Container(
                            height: 39,
                            width: 39,
                            child: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  'images/svg/iconN15.svg',
                                  height: 39,
                                  width: 39,
                                  fit: BoxFit.fill,
                                )),
                          )
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: size.height * 0.0580357142857143)),
                      SliderTheme(
                          data: SliderThemeData(
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 5),
                              trackHeight: 3),
                          child: Slider(
                              value: _currentSliderValue.toDouble(),
                              max: 100,
                              min: 0,
                              activeColor: Color(0xff3F414E),
                              inactiveColor: Color(0xffA0A3B1),
                              onChanged: (double value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              })),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '01:30',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff3F414E),
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '45:00',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff3F414E),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }

  Widget customAppbar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: CustomAppBarButton(
              color: Colors.white,
              icon: icon_close,
              opacity: 0.9,
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: CustomAppBarButton(
                  icon: icon_like,
                  color: Color(0xffB6B8BF).withOpacity(0.5),
                  opacity: 1,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 15)),
              InkWell(
                onTap: () {},
                child: CustomAppBarButton(
                  color: Color(0xffB6B8BF).withOpacity(0.5),
                  icon: icon_dowload,
                  opacity: 1,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  // AppBar buildAppBar() {
  //   return AppBar(
  //     backgroundColor: Colors.transparent,
  //     elevation: 0,
  //     leading: InkWell(
  //       onTap: () {},
  //       child: CustomAppBarButton(
  //         icon: icon_close,
  //         color: Colors.white,
  //         opacity: 0.9,
  //       ),
  //     ),
  //     actions: [
  //       InkWell(
  //         onTap: () {},
  //         child: CustomAppBarButton(
  //           icon: icon_like,
  //           color: Color(0xffB6B8BF).withOpacity(0.5),
  //           opacity: 1,
  //         ),
  //       ),
  //       SizedBox(width: 15,),
  //       InkWell(
  //         onTap: () {},
  //         child: CustomAppBarButton(
  //           color: Color(0xffB6B8BF).withOpacity(0.5),
  //           icon: icon_dowload,
  //           opacity: 1,
  //         ),
  //       )
  //     ],
  //   );
  // }
}
