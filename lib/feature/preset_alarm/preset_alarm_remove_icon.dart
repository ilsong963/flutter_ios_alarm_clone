import 'package:flutter/material.dart';

class PresetAlarmRemoveIcon extends StatelessWidget {
  const PresetAlarmRemoveIcon({
    super.key,
    required Animation<double> sizeUpAnimation,
    required this.isEditMode,
    required this.onRemove,
  }) : _sizeUpAnimation = sizeUpAnimation;

  final Animation<double> _sizeUpAnimation;
  final bool isEditMode;
  final Function onRemove;

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
          ? GestureDetector(
              onTap: () {
                onRemove();
              },
              child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: const Icon(Icons.block,
                      color: Colors.red, key: ValueKey('edit_icon'))))
          : const SizedBox.shrink(),
    );
  }
}
