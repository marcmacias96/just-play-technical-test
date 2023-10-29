import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_play/data/auth/auth.dart';
import 'package:just_play/data/city/city.dart';
import 'package:just_play/data/local/local.dart';
part 'city_sport_form_state.dart';
part 'city_sport_form_cubit.freezed.dart';

@injectable
class CitySportFormCubit extends Cubit<CitySportFormState> {
  CitySportFormCubit(
    this._cityRepository,
    this._localRepository,
    this._authRepository,
  ) : super(CitySportFormState.initial());

  final CityRepository _cityRepository;
  final ILocalRepository _localRepository;
  final IAuthRepository _authRepository;

  Future<void> getCities() async {
    emit(state.copyWith(isLoading: true, showError: false));
    final failureOrCities = await _cityRepository.getCities();
    failureOrCities.fold(
      (l) => emit(state.copyWith(showError: true)),
      (r) => emit(state.copyWith(cities: r)),
    );
    emit(
      state.copyWith(
        isLoading: false,
      ),
    );
  }

  void selectCity(City? city) {
    emit(state.copyWith(city: city));
  }

  void selectSport(Sport sport) {
    emit(state.copyWith(sport: sport));
  }

  Future<void> saveUserID() async {
    final user = await _authRepository.getUser();
    if (user != null) {
      await _localRepository.cacheUserId(user.uid);
    }
  }
}
