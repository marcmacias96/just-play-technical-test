// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_sport_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CitySportFormState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  List<City> get cities => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;
  Sport? get sport => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CitySportFormStateCopyWith<CitySportFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitySportFormStateCopyWith<$Res> {
  factory $CitySportFormStateCopyWith(
          CitySportFormState value, $Res Function(CitySportFormState) then) =
      _$CitySportFormStateCopyWithImpl<$Res, CitySportFormState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool showError,
      List<City> cities,
      City? city,
      Sport? sport});

  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$CitySportFormStateCopyWithImpl<$Res, $Val extends CitySportFormState>
    implements $CitySportFormStateCopyWith<$Res> {
  _$CitySportFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showError = null,
    Object? cities = null,
    Object? city = freezed,
    Object? sport = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      sport: freezed == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitySportFormStateImplCopyWith<$Res>
    implements $CitySportFormStateCopyWith<$Res> {
  factory _$$CitySportFormStateImplCopyWith(_$CitySportFormStateImpl value,
          $Res Function(_$CitySportFormStateImpl) then) =
      __$$CitySportFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool showError,
      List<City> cities,
      City? city,
      Sport? sport});

  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$CitySportFormStateImplCopyWithImpl<$Res>
    extends _$CitySportFormStateCopyWithImpl<$Res, _$CitySportFormStateImpl>
    implements _$$CitySportFormStateImplCopyWith<$Res> {
  __$$CitySportFormStateImplCopyWithImpl(_$CitySportFormStateImpl _value,
      $Res Function(_$CitySportFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showError = null,
    Object? cities = null,
    Object? city = freezed,
    Object? sport = freezed,
  }) {
    return _then(_$CitySportFormStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      sport: freezed == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport?,
    ));
  }
}

/// @nodoc

class _$CitySportFormStateImpl implements _CitySportFormState {
  const _$CitySportFormStateImpl(
      {required this.isLoading,
      required this.showError,
      required final List<City> cities,
      this.city,
      this.sport})
      : _cities = cities;

  @override
  final bool isLoading;
  @override
  final bool showError;
  final List<City> _cities;
  @override
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  final City? city;
  @override
  final Sport? sport;

  @override
  String toString() {
    return 'CitySportFormState(isLoading: $isLoading, showError: $showError, cities: $cities, city: $city, sport: $sport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitySportFormStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.sport, sport) || other.sport == sport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, showError,
      const DeepCollectionEquality().hash(_cities), city, sport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitySportFormStateImplCopyWith<_$CitySportFormStateImpl> get copyWith =>
      __$$CitySportFormStateImplCopyWithImpl<_$CitySportFormStateImpl>(
          this, _$identity);
}

abstract class _CitySportFormState implements CitySportFormState {
  const factory _CitySportFormState(
      {required final bool isLoading,
      required final bool showError,
      required final List<City> cities,
      final City? city,
      final Sport? sport}) = _$CitySportFormStateImpl;

  @override
  bool get isLoading;
  @override
  bool get showError;
  @override
  List<City> get cities;
  @override
  City? get city;
  @override
  Sport? get sport;
  @override
  @JsonKey(ignore: true)
  _$$CitySportFormStateImplCopyWith<_$CitySportFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
