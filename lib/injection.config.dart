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
import 'package:just_play/data/auth/auth_repository.dart' as _i6;
import 'package:just_play/data/auth/i_auth_interface.dart' as _i5;
import 'package:just_play/data/city/city_repository.dart' as _i3;
import 'package:just_play/data/core/firebase_injectable_module.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
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
    return this;
  }
}

class _$FirebaseInjectableModule extends _i7.FirebaseInjectableModule {}
