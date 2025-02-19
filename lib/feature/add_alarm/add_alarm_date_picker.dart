import 'package:flutter/cupertino.dart';

class AddAlarmDatePicker extends StatelessWidget {
  final Function onDateTimeChanged;

  const AddAlarmDatePicker(
      {super.key, required, required this.onDateTimeChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: CupertinoDatePicker(
        initialDateTime: DateTime.now(),
        onDateTimeChanged: (value) => onDateTimeChanged(value),
        mode: CupertinoDatePickerMode.time,
      ),
    );
  }
}
