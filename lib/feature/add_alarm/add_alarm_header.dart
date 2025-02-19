import 'package:flutter/material.dart';

class AddAlarmHeader extends StatelessWidget {
  final Function onSave;

  const AddAlarmHeader({
    super.key,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Text(
              '취소',
              style: TextStyle(
                color: Color(0xffff9f0a),
                fontSize: 20,
              ),
            ),
          ),
          Text(
            '알람 추가',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          GestureDetector(
            onTap: () {
              onSave();
            },
            child: Text(
              '저장',
              style: TextStyle(
                color: Color(0xffff9f0a),
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
