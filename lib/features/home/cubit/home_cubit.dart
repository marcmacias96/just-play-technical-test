import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_play/data/league/league.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._leagueRepository) : super(const HomeState.initial());

  final LeagueRepository _leagueRepository;

  Future<void> getLeague() async {
    emit(const HomeState.loading());
    final league = await _leagueRepository.getStandingsByLeague(
      leagueCode: 'PL',
    );
    league.fold(
      (failure) => emit(
        HomeState.error(
          message: failure.map(
            unauthorized: (_) => 'Invalid API key',
            unexpected: (_) => 'Unexpected error',
          ),
        ),
      ),
      (league) => emit(HomeState.loaded(league: league)),
    );
  }
}
