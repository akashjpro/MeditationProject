import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:meditation_app/presentation/screens/shared/widgets/custom_button.dart';
import 'package:meditation_app/presentation/screens/sign_up/widgets/text_field_container.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();

  bool _changedUsername = false;
  bool _changedEmail = false;
  bool _isVisiblePassword = true;
  bool _isCheckboxChecked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/vector.png'),
              ),
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ClipOval(
                        child: InkWell(
                          onTap: () {
                            print('tapped');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Color(0xFFEBEAEC))),
                            child:
                                SvgPicture.asset('assets/icons/back_arrow.svg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Text(
                      'Create your account',
                      style: TextStyle(
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w700,
                        fontSize: 28.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: CustomButton(
                      title: 'CONTINUE WITH FACEBOOK',
                      color: Color(0xFF7583CA),
                      iconPath: 'assets/icons/fb.svg',
                      function: () {},
                      textColor: Color(0xFFF6F1FB),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: CustomButton(
                      title: 'CONTINUE WITH GOOGLE',
                      color: Color(0xFFEBEAEC),
                      iconPath: 'assets/icons/gg.svg',
                      function: () {},
                      textColor: Color(0xFF3F414E),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: Text(
                      'OR LOGIN WITH EMAIL',
                      style: TextStyle(
                        color: Color(0xFFA1A4B2),
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFieldContainer(
                          child: TextFormField(
                            controller: _usernameController,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Your name',
                              suffixIcon: _changedUsername
                                  ? SvgPicture.asset(
                                      'assets/icons/check.svg',
                                    )
                                  : null,
                            ),
                            onChanged: (text) {
                              if (text.isNotEmpty) {
                                setState(() {
                                  _changedUsername = true;
                                });
                              } else {
                                setState(() {
                                  _changedUsername = false;
                                });
                              }
                            },
                          ),
                        ),
                        TextFieldContainer(
                          child: TextFormField(
                            controller: _emailController,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email address',
                              suffixIcon: _changedEmail
                                  ? SvgPicture.asset(
                                      'assets/icons/check.svg',
                                    )
                                  : null,
                            ),
                            onChanged: (text) {
                              if (text.isNotEmpty) {
                                setState(() {
                                  _changedEmail = true;
                                });
                              } else {
                                setState(() {
                                  _changedEmail = false;
                                });
                              }
                            },
                          ),
                        ),
                        TextFieldContainer(
                          child: TextFormField(
                            controller: _passwordController,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: _isVisiblePassword,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                icon: SvgPicture.asset(
                                  'assets/icons/visible.svg',
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isVisiblePassword = !_isVisiblePassword;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'I have read the ',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Privace Policy',
                                  style: TextStyle(
                                    color: Color(0xFF8E97FD),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Checkbox(
                              onChanged: (bool? value) {
                                setState(() {
                                  _isCheckboxChecked = value!;
                                });
                              },
                              value: _isCheckboxChecked,
                              checkColor: Colors.blueAccent,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    color: Color(0xFF8E97FD),
                    function: () {},
                    textColor: Color(0xFFF6F1FB),
                    title: 'GET STARTED',
                    iconPath: '',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
