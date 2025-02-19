import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/model/alarm.dart';
import 'package:intl/intl.dart';

class PresetAlarmContext extends StatelessWidget {
  const PresetAlarmContext({
    super.key,
    required this.alarm,
  });
  final Alarm alarm;
  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('a h:mm');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
                dateFormat.format(alarm.time).split(' ')[0] == 'AM'
                    ? '오전'
                    : '오후',
                style: TextStyle(fontSize: 25, color: Color(0xff8d8d93))),
            SizedBox(width: 10),
            Text(
              dateFormat.format(alarm.time).split(' ')[1],
              style: TextStyle(
                  fontSize: 60,
                  color: Color(0xff8d8d93),
                  height: 1,
                  letterSpacing: -3),
            ),
          ],
        ),
        Text('알람', style: TextStyle(fontSize: 18, color: Color(0xff8d8d93))),
      ],
    );
  }
}
