// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

League _$LeagueFromJson(Map<String, dynamic> json) {
  return _League.fromJson(json);
}

/// @nodoc
mixin _$League {
  Competition get competition => throw _privateConstructorUsedError;
  List<Standing> get standings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueCopyWith<League> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueCopyWith<$Res> {
  factory $LeagueCopyWith(League value, $Res Function(League) then) =
      _$LeagueCopyWithImpl<$Res, League>;
  @useResult
  $Res call({Competition competition, List<Standing> standings});

  $CompetitionCopyWith<$Res> get competition;
}

/// @nodoc
class _$LeagueCopyWithImpl<$Res, $Val extends League>
    implements $LeagueCopyWith<$Res> {
  _$LeagueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? competition = null,
    Object? standings = null,
  }) {
    return _then(_value.copyWith(
      competition: null == competition
          ? _value.competition
          : competition // ignore: cast_nullable_to_non_nullable
              as Competition,
      standings: null == standings
          ? _value.standings
          : standings // ignore: cast_nullable_to_non_nullable
              as List<Standing>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompetitionCopyWith<$Res> get competition {
    return $CompetitionCopyWith<$Res>(_value.competition, (value) {
      return _then(_value.copyWith(competition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeagueImplCopyWith<$Res> implements $LeagueCopyWith<$Res> {
  factory _$$LeagueImplCopyWith(
          _$LeagueImpl value, $Res Function(_$LeagueImpl) then) =
      __$$LeagueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Competition competition, List<Standing> standings});

  @override
  $CompetitionCopyWith<$Res> get competition;
}

/// @nodoc
class __$$LeagueImplCopyWithImpl<$Res>
    extends _$LeagueCopyWithImpl<$Res, _$LeagueImpl>
    implements _$$LeagueImplCopyWith<$Res> {
  __$$LeagueImplCopyWithImpl(
      _$LeagueImpl _value, $Res Function(_$LeagueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? competition = null,
    Object? standings = null,
  }) {
    return _then(_$LeagueImpl(
      competition: null == competition
          ? _value.competition
          : competition // ignore: cast_nullable_to_non_nullable
              as Competition,
      standings: null == standings
          ? _value._standings
          : standings // ignore: cast_nullable_to_non_nullable
              as List<Standing>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeagueImpl implements _League {
  _$LeagueImpl(
      {required this.competition, required final List<Standing> standings})
      : _standings = standings;

  factory _$LeagueImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeagueImplFromJson(json);

  @override
  final Competition competition;
  final List<Standing> _standings;
  @override
  List<Standing> get standings {
    if (_standings is EqualUnmodifiableListView) return _standings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_standings);
  }

  @override
  String toString() {
    return 'League(competition: $competition, standings: $standings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueImpl &&
            (identical(other.competition, competition) ||
                other.competition == competition) &&
            const DeepCollectionEquality()
                .equals(other._standings, _standings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, competition,
      const DeepCollectionEquality().hash(_standings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueImplCopyWith<_$LeagueImpl> get copyWith =>
      __$$LeagueImplCopyWithImpl<_$LeagueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeagueImplToJson(
      this,
    );
  }
}

abstract class _League implements League {
  factory _League(
      {required final Competition competition,
      required final List<Standing> standings}) = _$LeagueImpl;

  factory _League.fromJson(Map<String, dynamic> json) = _$LeagueImpl.fromJson;

  @override
  Competition get competition;
  @override
  List<Standing> get standings;
  @override
  @JsonKey(ignore: true)
  _$$LeagueImplCopyWith<_$LeagueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
