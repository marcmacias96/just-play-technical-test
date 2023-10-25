import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:just_play/features/app/app_bloc_observer.dart';
import 'package:just_play/firebase_options.dart';
import 'package:just_play/injection.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      configureDependencies(Environment.prod);
      
      Bloc.observer = AppBlocObserver();

      await Future.wait([
        Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]),
      ]);

      return runApp(await builder());
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
