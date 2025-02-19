import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/preset_alarm/preset_alarm_arrow_icon.dart';
import 'package:flutter_application_1/feature/preset_alarm/preset_alarm_context.dart';
import 'package:flutter_application_1/feature/preset_alarm/preset_alarm_remove_icon.dart';
import 'package:flutter_application_1/feature/preset_alarm/preset_alarm_switch.dart';
import 'package:flutter_application_1/model/alarm.dart';

class PresetAlarmTile extends StatefulWidget {
  const PresetAlarmTile({
    super.key,
    required this.index,
    required this.isEditMode, // 상위에서 전달받음
    required this.onRemove,
    required this.alarm,
    required this.onChangedAlarm,
  });

  final int index;
  final bool isEditMode;
  final Function(int) onRemove;
  final Alarm alarm;
  final Function onChangedAlarm;

  @override
  State<PresetAlarmTile> createState() => _PresetAlarmTileState();
}

class _PresetAlarmTileState extends State<PresetAlarmTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _sizeUpAnimation;
  late Animation<double> _sizeDownAnimation;

  bool isOverPoint6 = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _sizeUpAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _sizeDownAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void didUpdateWidget(covariant PresetAlarmTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isEditMode != widget.isEditMode) {
      if (widget.isEditMode) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: ValueKey<int>(widget.alarm.time.millisecondsSinceEpoch),
        onDismissed: (direction) {
          widget.onRemove(widget.index);
        },
        onUpdate: (details) {
          bool newValue = details.progress > 0.6;
          if (isOverPoint6 != newValue) {
            setState(() {
              isOverPoint6 = newValue;
            });
          }
        },
        direction: DismissDirection.endToStart,
        background: RepaintBoundary(
          child: Container(
            width: 10,
            color: Colors.red,
            child: Row(
              mainAxisAlignment: isOverPoint6
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.end,
              children: [
                Icon(Icons.delete, color: Color(0xffffffff)),
                SizedBox(width: isOverPoint6 ? 0 : 20),
              ],
            ),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xff262629))),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // 편집 모드에서 왼쪽 아이콘 애니메이션 (사라질 때도 부드럽게)
              PresetAlarmRemoveIcon(
                sizeUpAnimation: _sizeUpAnimation,
                isEditMode: widget.isEditMode,
                onRemove: () {
                  widget.onRemove(widget.index);
                },
              ),

              // 시간 표시
              PresetAlarmContext(alarm: widget.alarm),

              Spacer(),

              // 편집 모드가 아닐 때 스위치 표시 (부드럽게 사라짐)
              PresetAlarmSwitch(
                sizeDownAnimation: _sizeDownAnimation,
                isEditMode: widget.isEditMode,
                isActivated: widget.alarm.isActivated,
                onSwitchChanged: (value) {
                  setState(() {
                    widget.onChangedAlarm(value);
                  });
                },
              ),

              // 편집 모드에서 오른쪽 아이콘 애니메이션 (사라질 때도 자연스럽게)
              PresetAlarmArrowIcon(
                sizeUpAnimation: _sizeUpAnimation,
                isEditMode: widget.isEditMode,
              ),
            ],
          ),
        ));
  }
}
