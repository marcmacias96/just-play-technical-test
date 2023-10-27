import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:just_play/injection.config.dart';


final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies(String env) => getIt.init(environment: env);
