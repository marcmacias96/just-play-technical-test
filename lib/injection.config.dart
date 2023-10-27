// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:just_play/data/auth/auth.dart' as _i10;
import 'package:just_play/data/auth/auth_repository.dart' as _i6;
import 'package:just_play/data/auth/i_auth_interface.dart' as _i5;
import 'package:just_play/data/city/city_repository.dart' as _i3;
import 'package:just_play/data/core/firebase_injectable_module.dart' as _i12;
import 'package:just_play/data/local/local_repository.dart' as _i11;
import 'package:just_play/features/auth/cubit/auth_cubit.dart' as _i8;
import 'package:just_play/features/auth_form/cubit/auth_form_cubit.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

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
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.IAuthRepository>(
        () => _i6.AuthRepository(firebaseAuth: gh<_i4.FirebaseAuth>()));
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => firebaseInjectableModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i8.AuthCubit>(() => _i8.AuthCubit(
          gh<_i4.FirebaseAuth>(),
          gh<InvalidType>(),
        ));
    gh.factory<_i9.AuthFormCubit>(
        () => _i9.AuthFormCubit(gh<_i10.IAuthRepository>()));
    gh.lazySingleton<_i11.LocalRepository>(() =>
        _i11.LocalRepository(sharedPreferences: gh<_i7.SharedPreferences>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i12.FirebaseInjectableModule {}
