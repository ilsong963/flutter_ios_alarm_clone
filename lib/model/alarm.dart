import 'package:freezed_annotation/freezed_annotation.dart';
part 'alarm.freezed.dart';
part 'alarm.g.dart';

@freezed
class Alarm with _$Alarm {
  const factory Alarm({
    required DateTime time,
    required Weekday weekday,
    required bool repeat,
    required String label,
    required String sound,
    required bool isActivated,
  }) = _Alarm;
  factory Alarm.fromJson(Map<String, Object?> json) => _$AlarmFromJson(json);
}

enum Weekday { Mon, Tue, Wed, Thu, Fri, Sat, Sun }
