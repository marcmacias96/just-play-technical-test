part of 'city_sport_form_cubit.dart';

@freezed
class CitySportFormState with _$CitySportFormState {
  const factory CitySportFormState({
    required bool isLoading,
    required bool showError,
    required List<City> cities,
    City? city,
    Sport? sport,
  }) = _CitySportFormState;

  factory CitySportFormState.initial() => const CitySportFormState(
        isLoading: false,
        showError: false,
        cities: [],
      );
}
