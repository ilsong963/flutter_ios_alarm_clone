import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/add_alarm/add_alarm_column_button.dart';
import 'package:flutter_application_1/feature/add_alarm/add_alarm_date_picker.dart';
import 'package:flutter_application_1/feature/add_alarm/add_alarm_header.dart';
import 'package:flutter_application_1/model/alarm.dart';

class AddAlarmScreen extends StatefulWidget {
  const AddAlarmScreen({super.key, required this.onSave});
  final Function onSave;
  @override
  State<AddAlarmScreen> createState() => _AddAlarmScreenState();
}

class _AddAlarmScreenState extends State<AddAlarmScreen> {
  DateTime selectedDateTime = DateTime.now();
  bool isRepeat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoPageScaffold(
        backgroundColor: Color(0xFF1C1C1E),
        child: Column(
          children: [
            AddAlarmHeader(
              onSave: () {
                widget.onSave(Alarm(
                  time: selectedDateTime,
                  repeat: isRepeat,
                  label: '알람',
                  sound: '빵빠레',
                  isActivated: true,
                  weekday: getWeekday(selectedDateTime),
                ));
                Navigator.pop(context);
              },
            ),
            AddAlarmDatePicker(onDateTimeChanged: (value) {
              selectedDateTime = value; // setState() 불필요
            }),
            AddAlarmColumButton(
              onRepeatChanged: (value) {
                setState(() {
                  isRepeat = value; // UI 업데이트 필요
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

Weekday getWeekday(DateTime dateTime) {
  switch (dateTime.weekday) {
    case 1:
      return Weekday.Mon;
    case 2:
      return Weekday.Tue;
    case 3:
      return Weekday.Wed;
    case 4:
      return Weekday.Thu;
    case 5:
      return Weekday.Fri;
    case 6:
      return Weekday.Sat;
    case 7:
      return Weekday.Sun;
    default:
      return Weekday.Mon;
  }
}
