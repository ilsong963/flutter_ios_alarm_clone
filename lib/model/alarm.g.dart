// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlarmImpl _$$AlarmImplFromJson(Map<String, dynamic> json) => _$AlarmImpl(
      time: DateTime.parse(json['time'] as String),
      weekday: $enumDecode(_$WeekdayEnumMap, json['weekday']),
      repeat: json['repeat'] as bool,
      label: json['label'] as String,
      sound: json['sound'] as String,
      isActivated: json['isActivated'] as bool,
    );

Map<String, dynamic> _$$AlarmImplToJson(_$AlarmImpl instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'weekday': _$WeekdayEnumMap[instance.weekday]!,
      'repeat': instance.repeat,
      'label': instance.label,
      'sound': instance.sound,
      'isActivated': instance.isActivated,
    };

const _$WeekdayEnumMap = {
  Weekday.Mon: 'Mon',
  Weekday.Tue: 'Tue',
  Weekday.Wed: 'Wed',
  Weekday.Thu: 'Thu',
  Weekday.Fri: 'Fri',
  Weekday.Sat: 'Sat',
  Weekday.Sun: 'Sun',
};
