import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/add_alarm/add_alarm_screen.dart';
import 'package:flutter_application_1/feature/preset_alarm/preset_alarm_tile.dart';
import 'package:flutter_application_1/feature/preset_alarm/preset_wake_up_alarm.dart';
import 'package:flutter_application_1/model/alarm.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isEditMode = false;
  List<Alarm> alarm = [];

  @override
  void initState() {
    super.initState();
    initPreferences();
  }

  Future<void> initPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString("alarm");
    if (data != null) {
      final decode = jsonDecode(data);
      if (decode is List<dynamic>) {
        setState(() {
          alarm = decode.map((e) => Alarm.fromJson(e)).toList();
        });
      }
    }
  }

  Future<void> saveAlarms() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        "alarm", jsonEncode(alarm.map((e) => e.toJson()).toList()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          transitionBetweenRoutes: false,
          backgroundColor: Color(0xFF000000),
          leading: GestureDetector(
            child: Text(
              isEditMode ? '완료' : '편집',
              style: TextStyle(
                color: Color(0xffff9f0a),
                fontSize: 20,
              ),
            ),
            onTap: () => setState(() {
              isEditMode = !isEditMode;
            }),
          ),
          trailing: GestureDetector(
            child: Image.asset('assets/images/icon_add.png'),
            onTap: () {
              if (isEditMode) {
                setState(() {
                  isEditMode = false;
                });
              }
              showCupertinoModalBottomSheet(
                expand: false,
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) => AddAlarmScreen(
                  onSave: (newAlarm) {
                    setState(() {
                      alarm.add(newAlarm);
                    });
                    saveAlarms();
                  },
                ),
              );
            },
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PresetWakeUpAlarm(),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                '기타',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: alarm.length,
                itemBuilder: (context, index) {
                  return PresetAlarmTile(
                    alarm: alarm[index],
                    onRemove: (i) {
                      setState(() {
                        alarm.removeAt(i);
                      });
                      saveAlarms();
                    },
                    onChangedAlarm: (newAlarm) {
                      setState(() {
                        alarm[index] =
                            alarm[index].copyWith(isActivated: newAlarm);
                      });
                      saveAlarms();
                    },
                    isEditMode: isEditMode,
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
