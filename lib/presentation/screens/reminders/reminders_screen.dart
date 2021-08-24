import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:meditation_app/core/constants/constants.dart';
import 'package:meditation_app/presentation/screens/shared/widgets/custom_button.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({Key? key}) : super(key: key);

  @override
  _RemindersScreenState createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  TimeOfDay _dateTime = TimeOfDay.now();
  // DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 260.0),
                  child: Text(
                    'What time would you like to meditate?',
                    style: TextStyle(
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.w700,
                        fontSize: 24.0),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  constraints: BoxConstraints(maxWidth: 350.0),
                  child: Text(
                    'Anytime you can choose but We recommend first thing in th moring.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFFA1A4B2)),
                  ),
                ),
                SizedBox(height: 30.0),
                SizedBox(
                  height: 250.0,
                  child: CupertinoDatePicker(
                    backgroundColor: Color(0xFFF5F5F9),
                    mode: CupertinoDatePickerMode.time,
                    initialDateTime:
                        DateTime(1969, 1, 1, _dateTime.hour, _dateTime.minute),
                    // _dateTime,
                    onDateTimeChanged: (dateTimeChanged) {
                      setState(() {
                        _dateTime = TimeOfDay.fromDateTime(dateTimeChanged);
                        // _dateTime = dateTimeChanged;
                      });
                    },
                    minuteInterval: 1,
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  constraints: BoxConstraints(maxWidth: 260.0),
                  child: Text(
                    'Which day would you like to meditate?',
                    style: TextStyle(
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.w700,
                        fontSize: 24.0),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  constraints: BoxConstraints(maxWidth: 350.0),
                  child: Text(
                    'Everyday is best, but we recommend picking at least five.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFFA1A4B2)),
                  ),
                ),
                SizedBox(height: 40.0),
                GroupButton(
                  isRadio: false,
                  spacing: 14,
                  direction: Axis.horizontal,
                  buttons: ['SU', 'M', 'T', 'W', 'TH', 'F', 'S'],
                  onSelected: (index, isSelected) =>
                      print('$index button is selected'),
                  selectedColor: Color(0xFF3F414E),
                  borderRadius: BorderRadius.circular(40.0),
                  buttonHeight: 40.75,
                  buttonWidth: 40.75,
                  selectedTextStyle: TextStyle(
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                  unselectedColor: Colors.white,
                  unselectedBorderColor: Color(0xFFA1A4B2),
                  unselectedTextStyle: TextStyle(
                    color: Color(0xFFA1A4B2),
                  ),
                  groupRunAlignment: GroupRunAlignment.spaceAround,
                ),
                SizedBox(height: 25.0),
                CustomButton(
                  title: 'SAVE',
                  color: Color(0xFF8E97FD),
                  function: () {},
                  textColor: Color(0xFFF6F1FB),
                ),
                SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'NO THANKS',
                    style: TextStyle(
                        fontFamily: fontFamily,
                        color: Color(0xFF3F414E),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
