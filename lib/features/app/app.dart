import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:just_play/features/auth/cubit/auth_cubit.dart';
import 'package:just_play/injection.dart';
import 'package:just_play/navigation/navigation.dart';
import 'package:just_play/theme/theme.dart';
import 'package:just_play/utils/utils.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  final _authCubit = getIt<AuthCubit>();
  late GoRouter _router;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    _router = getGoRouter(_authCubit);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _authCubit,
        ),
      ],
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return InheritedAnimations(
            repeatAnimationsEnabled: true,
            child: MaterialApp.router(
              routerConfig: _router,
              debugShowCheckedModeBanner: false,
              title: 'JustPlay',
              theme: AppTheme.theme,
            ),
          );
        },
      ),
    );
  }
}
