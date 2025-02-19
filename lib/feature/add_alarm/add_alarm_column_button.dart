import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAlarmColumButton extends StatelessWidget {
  const AddAlarmColumButton({
    super.key,
    required this.onRepeatChanged,
  });
  final Function(bool) onRepeatChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Color(0xFF2C2C2E),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            ListTile(
              title: Text(
                '반복',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Text(
                '안함 >',
                style: TextStyle(color: Color(0xff8d8d93)),
              ),
            ),
            ListTile(
              title: Text(
                '레이블',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Text(
                '알람',
                style: TextStyle(color: Color(0xff8d8d93)),
              ),
            ),
            ListTile(
              title: Text(
                '알람',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Text(
                '틸트 >',
                style: TextStyle(color: Color(0xff8d8d93)),
              ),
            ),
            ListTile(
                title: Text(
                  '다시 알림',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: CupertinoSwitch(
                    value: true,
                    onChanged: (value) {
                      onRepeatChanged(value);
                    }))
          ],
        ));
  }
}
