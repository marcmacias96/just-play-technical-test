// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return _Season.fromJson(json);
}

/// @nodoc
mixin _$Season {
  int get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  int get currentMatchday => throw _privateConstructorUsedError;
  List<String> get stages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonCopyWith<Season> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonCopyWith<$Res> {
  factory $SeasonCopyWith(Season value, $Res Function(Season) then) =
      _$SeasonCopyWithImpl<$Res, Season>;
  @useResult
  $Res call(
      {int id,
      DateTime startDate,
      DateTime endDate,
      int currentMatchday,
      List<String> stages});
}

/// @nodoc
class _$SeasonCopyWithImpl<$Res, $Val extends Season>
    implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? currentMatchday = null,
    Object? stages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currentMatchday: null == currentMatchday
          ? _value.currentMatchday
          : currentMatchday // ignore: cast_nullable_to_non_nullable
              as int,
      stages: null == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeasonImplCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$$SeasonImplCopyWith(
          _$SeasonImpl value, $Res Function(_$SeasonImpl) then) =
      __$$SeasonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime startDate,
      DateTime endDate,
      int currentMatchday,
      List<String> stages});
}

/// @nodoc
class __$$SeasonImplCopyWithImpl<$Res>
    extends _$SeasonCopyWithImpl<$Res, _$SeasonImpl>
    implements _$$SeasonImplCopyWith<$Res> {
  __$$SeasonImplCopyWithImpl(
      _$SeasonImpl _value, $Res Function(_$SeasonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? currentMatchday = null,
    Object? stages = null,
  }) {
    return _then(_$SeasonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currentMatchday: null == currentMatchday
          ? _value.currentMatchday
          : currentMatchday // ignore: cast_nullable_to_non_nullable
              as int,
      stages: null == stages
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeasonImpl implements _Season {
  _$SeasonImpl(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.currentMatchday,
      required final List<String> stages})
      : _stages = stages;

  factory _$SeasonImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final int currentMatchday;
  final List<String> _stages;
  @override
  List<String> get stages {
    if (_stages is EqualUnmodifiableListView) return _stages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stages);
  }

  @override
  String toString() {
    return 'Season(id: $id, startDate: $startDate, endDate: $endDate, currentMatchday: $currentMatchday, stages: $stages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.currentMatchday, currentMatchday) ||
                other.currentMatchday == currentMatchday) &&
            const DeepCollectionEquality().equals(other._stages, _stages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, startDate, endDate,
      currentMatchday, const DeepCollectionEquality().hash(_stages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonImplCopyWith<_$SeasonImpl> get copyWith =>
      __$$SeasonImplCopyWithImpl<_$SeasonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonImplToJson(
      this,
    );
  }
}

abstract class _Season implements Season {
  factory _Season(
      {required final int id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final int currentMatchday,
      required final List<String> stages}) = _$SeasonImpl;

  factory _Season.fromJson(Map<String, dynamic> json) = _$SeasonImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  int get currentMatchday;
  @override
  List<String> get stages;
  @override
  @JsonKey(ignore: true)
  _$$SeasonImplCopyWith<_$SeasonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
