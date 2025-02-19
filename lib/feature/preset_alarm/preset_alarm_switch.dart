import 'package:flutter/cupertino.dart';

class PresetAlarmSwitch extends StatefulWidget {
  final Animation<double> sizeDownAnimation;
  final bool isEditMode;
  final bool isActivated;
  final Function onSwitchChanged;

  const PresetAlarmSwitch(
      {super.key,
      required this.sizeDownAnimation,
      required this.isEditMode,
      required this.isActivated,
      required this.onSwitchChanged});

  @override
  State<PresetAlarmSwitch> createState() => _PresetAlarmSwitchState();
}

class _PresetAlarmSwitchState extends State<PresetAlarmSwitch> {
  @override
  Widget build(BuildContext context) {
    bool isActivated = widget.isActivated;
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: SizeTransition(
              axis: Axis.horizontal, // 가로 방향으로 크기 변화
              sizeFactor: widget.sizeDownAnimation,
              child: child),
        );
      },
      child: widget.isEditMode
          ? const SizedBox.shrink()
          : CupertinoSwitch(
              value: isActivated,
              onChanged: (_) {
                setState(() {
                  isActivated = !isActivated;
                  widget.onSwitchChanged(isActivated);
                });
              },
              key: ValueKey('switch')),
    );
  }
}
