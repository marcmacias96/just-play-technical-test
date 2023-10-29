// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Standing _$StandingFromJson(Map<String, dynamic> json) {
  return _Standing.fromJson(json);
}

/// @nodoc
mixin _$Standing {
  String get stage => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<Table> get table => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StandingCopyWith<Standing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingCopyWith<$Res> {
  factory $StandingCopyWith(Standing value, $Res Function(Standing) then) =
      _$StandingCopyWithImpl<$Res, Standing>;
  @useResult
  $Res call({String stage, String type, List<Table> table});
}

/// @nodoc
class _$StandingCopyWithImpl<$Res, $Val extends Standing>
    implements $StandingCopyWith<$Res> {
  _$StandingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? type = null,
    Object? table = null,
  }) {
    return _then(_value.copyWith(
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as List<Table>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StandingImplCopyWith<$Res>
    implements $StandingCopyWith<$Res> {
  factory _$$StandingImplCopyWith(
          _$StandingImpl value, $Res Function(_$StandingImpl) then) =
      __$$StandingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String stage, String type, List<Table> table});
}

/// @nodoc
class __$$StandingImplCopyWithImpl<$Res>
    extends _$StandingCopyWithImpl<$Res, _$StandingImpl>
    implements _$$StandingImplCopyWith<$Res> {
  __$$StandingImplCopyWithImpl(
      _$StandingImpl _value, $Res Function(_$StandingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? type = null,
    Object? table = null,
  }) {
    return _then(_$StandingImpl(
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      table: null == table
          ? _value._table
          : table // ignore: cast_nullable_to_non_nullable
              as List<Table>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StandingImpl implements _Standing {
  _$StandingImpl(
      {required this.stage,
      required this.type,
      required final List<Table> table})
      : _table = table;

  factory _$StandingImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandingImplFromJson(json);

  @override
  final String stage;
  @override
  final String type;
  final List<Table> _table;
  @override
  List<Table> get table {
    if (_table is EqualUnmodifiableListView) return _table;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_table);
  }

  @override
  String toString() {
    return 'Standing(stage: $stage, type: $type, table: $table)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingImpl &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._table, _table));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, stage, type, const DeepCollectionEquality().hash(_table));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingImplCopyWith<_$StandingImpl> get copyWith =>
      __$$StandingImplCopyWithImpl<_$StandingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StandingImplToJson(
      this,
    );
  }
}

abstract class _Standing implements Standing {
  factory _Standing(
      {required final String stage,
      required final String type,
      required final List<Table> table}) = _$StandingImpl;

  factory _Standing.fromJson(Map<String, dynamic> json) =
      _$StandingImpl.fromJson;

  @override
  String get stage;
  @override
  String get type;
  @override
  List<Table> get table;
  @override
  @JsonKey(ignore: true)
  _$$StandingImplCopyWith<_$StandingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
