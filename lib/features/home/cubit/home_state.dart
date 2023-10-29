part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.loaded({
  required League league,
  }) = _Loaded;
  const factory HomeState.error({required String message}) = _Error;
}
