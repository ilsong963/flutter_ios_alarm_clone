import 'package:flutter/widgets.dart';

class PresetAlarmArrowIcon extends StatelessWidget {
  const PresetAlarmArrowIcon({
    super.key,
    required Animation<double> sizeUpAnimation,
    required this.isEditMode,
  }) : _sizeUpAnimation = sizeUpAnimation;

  final Animation<double> _sizeUpAnimation;
  final bool isEditMode;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: SizeTransition(
              axis: Axis.horizontal, // 가로 방향으로 크기 변화
              sizeFactor: _sizeUpAnimation,
              child: child),
        );
      },
      child: isEditMode
          ? const Text(
              '>',
              style: TextStyle(
                  fontSize: 60,
                  color: Color(0xff8d8d93),
                  height: 1,
                  letterSpacing: -3),
              key: ValueKey('edit_arrow'),
            )
          : const SizedBox.shrink(),
    );
  }
}
