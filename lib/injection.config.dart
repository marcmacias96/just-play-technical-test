// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:just_play/data/auth/auth.dart' as _i6;
import 'package:just_play/data/auth/auth_repository.dart' as _i7;
import 'package:just_play/data/city/city.dart' as _i17;
import 'package:just_play/data/city/city_repository.dart' as _i3;
import 'package:just_play/data/core/firebase_injectable_module.dart' as _i18;
import 'package:just_play/data/league/league.dart' as _i12;
import 'package:just_play/data/league/league_repository.dart' as _i8;
import 'package:just_play/data/local/local.dart' as _i13;
import 'package:just_play/data/local/local_repository.dart' as _i14;
import 'package:just_play/features/auth/cubit/auth_cubit.dart' as _i15;
import 'package:just_play/features/auth_form/cubit/auth_form_cubit.dart'
    as _i10;
import 'package:just_play/features/city_sport_form/cubit/city_sport_form_cubit.dart'
    as _i16;
import 'package:just_play/features/home/cubit/home_cubit.dart' as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.CityRepository>(() => const _i3.CityRepository());
    gh.lazySingleton<_i4.Dio>(() => firebaseInjectableModule.httpClient);
    gh.lazySingleton<_i5.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i6.IAuthRepository>(
        () => _i7.AuthRepository(firebaseAuth: gh<_i5.FirebaseAuth>()));
    gh.lazySingleton<_i8.LeagueRepository>(
        () => _i8.LeagueRepository(dio: gh<_i4.Dio>()));
    await gh.factoryAsync<_i9.SharedPreferences>(
      () => firebaseInjectableModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i10.AuthFormCubit>(
        () => _i10.AuthFormCubit(gh<_i6.IAuthRepository>()));
    gh.factory<_i11.HomeCubit>(
        () => _i11.HomeCubit(gh<_i12.LeagueRepository>()));
    gh.lazySingleton<_i13.ILocalRepository>(() =>
        _i14.LocalRepository(sharedPreferences: gh<_i9.SharedPreferences>()));
    gh.factory<_i15.AuthCubit>(() => _i15.AuthCubit(
          gh<_i5.FirebaseAuth>(),
          gh<_i13.ILocalRepository>(),
        ));
    gh.factory<_i16.CitySportFormCubit>(() => _i16.CitySportFormCubit(
          gh<_i17.CityRepository>(),
          gh<_i13.ILocalRepository>(),
          gh<_i6.IAuthRepository>(),
        ));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i18.FirebaseInjectableModule {}
