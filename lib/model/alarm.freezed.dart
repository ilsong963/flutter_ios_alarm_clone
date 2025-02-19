// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Alarm _$AlarmFromJson(Map<String, dynamic> json) {
  return _Alarm.fromJson(json);
}

/// @nodoc
mixin _$Alarm {
  DateTime get time => throw _privateConstructorUsedError;
  Weekday get weekday => throw _privateConstructorUsedError;
  bool get repeat => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get sound => throw _privateConstructorUsedError;
  bool get isActivated => throw _privateConstructorUsedError;

  /// Serializes this Alarm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Alarm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlarmCopyWith<Alarm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmCopyWith<$Res> {
  factory $AlarmCopyWith(Alarm value, $Res Function(Alarm) then) =
      _$AlarmCopyWithImpl<$Res, Alarm>;
  @useResult
  $Res call(
      {DateTime time,
      Weekday weekday,
      bool repeat,
      String label,
      String sound,
      bool isActivated});
}

/// @nodoc
class _$AlarmCopyWithImpl<$Res, $Val extends Alarm>
    implements $AlarmCopyWith<$Res> {
  _$AlarmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Alarm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weekday = null,
    Object? repeat = null,
    Object? label = null,
    Object? sound = null,
    Object? isActivated = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as Weekday,
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as bool,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as String,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlarmImplCopyWith<$Res> implements $AlarmCopyWith<$Res> {
  factory _$$AlarmImplCopyWith(
          _$AlarmImpl value, $Res Function(_$AlarmImpl) then) =
      __$$AlarmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime time,
      Weekday weekday,
      bool repeat,
      String label,
      String sound,
      bool isActivated});
}

/// @nodoc
class __$$AlarmImplCopyWithImpl<$Res>
    extends _$AlarmCopyWithImpl<$Res, _$AlarmImpl>
    implements _$$AlarmImplCopyWith<$Res> {
  __$$AlarmImplCopyWithImpl(
      _$AlarmImpl _value, $Res Function(_$AlarmImpl) _then)
      : super(_value, _then);

  /// Create a copy of Alarm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weekday = null,
    Object? repeat = null,
    Object? label = null,
    Object? sound = null,
    Object? isActivated = null,
  }) {
    return _then(_$AlarmImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as Weekday,
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as bool,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as String,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlarmImpl implements _Alarm {
  const _$AlarmImpl(
      {required this.time,
      required this.weekday,
      required this.repeat,
      required this.label,
      required this.sound,
      required this.isActivated});

  factory _$AlarmImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlarmImplFromJson(json);

  @override
  final DateTime time;
  @override
  final Weekday weekday;
  @override
  final bool repeat;
  @override
  final String label;
  @override
  final String sound;
  @override
  final bool isActivated;

  @override
  String toString() {
    return 'Alarm(time: $time, weekday: $weekday, repeat: $repeat, label: $label, sound: $sound, isActivated: $isActivated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlarmImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.sound, sound) || other.sound == sound) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, time, weekday, repeat, label, sound, isActivated);

  /// Create a copy of Alarm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlarmImplCopyWith<_$AlarmImpl> get copyWith =>
      __$$AlarmImplCopyWithImpl<_$AlarmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlarmImplToJson(
      this,
    );
  }
}

abstract class _Alarm implements Alarm {
  const factory _Alarm(
      {required final DateTime time,
      required final Weekday weekday,
      required final bool repeat,
      required final String label,
      required final String sound,
      required final bool isActivated}) = _$AlarmImpl;

  factory _Alarm.fromJson(Map<String, dynamic> json) = _$AlarmImpl.fromJson;

  @override
  DateTime get time;
  @override
  Weekday get weekday;
  @override
  bool get repeat;
  @override
  String get label;
  @override
  String get sound;
  @override
  bool get isActivated;

  /// Create a copy of Alarm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlarmImplCopyWith<_$AlarmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
