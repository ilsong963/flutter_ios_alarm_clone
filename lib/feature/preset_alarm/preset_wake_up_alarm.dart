import 'package:flutter/cupertino.dart';

class PresetWakeUpAlarm extends StatelessWidget {
  const PresetWakeUpAlarm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '알람',
            style: TextStyle(fontSize: 40, color: Color(0xffffffff)),
          ),
          SizedBox(height: 15),
          Text(
            '🛌 수면 | 기상',
            style: TextStyle(fontSize: 20, color: Color(0xffffffff)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '알람없음',
                style: TextStyle(color: Color(0xff8d8d93), fontSize: 50),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff262629),
                ),
                child: Text(
                  '변경',
                  style: TextStyle(color: Color(0xffff9f0a), fontSize: 16),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
