import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:just_play/features/auth/auth.dart';
import 'package:just_play/features/auth/cubit/auth_cubit.dart';
import 'package:just_play/features/auth_form/auth_form.dart';
import 'package:just_play/features/city_sport_form/city_sport_form_page.dart';
import 'package:just_play/features/home/home.dart';
import 'package:just_play/features/onboarding/onboarding.dart';
import 'package:just_play/utils/utils.dart';

GoRouter getGoRouter(AuthCubit authCubit) {
  return GoRouter(
    refreshListenable: GoRouterRefreshStream(authCubit.stream),
    routes: [
      GoRoute(
        path: AuthPage.routePath,
        builder: (context, state) => const AuthPage(),
      ),
      GoRoute(
        name: AuthFormPage.routeName,
        path: '/${AuthFormPage.routeName}',
        builder: (context, state) {
          final args = state.extra! as AuthFormArgs;
          return AuthFormPage(
            args: args,
          );
        },
      ),
      GoRoute(
        name: CitySportFormPage.routeName,
        path: '/${CitySportFormPage.routeName}',
        builder: (context, state) => const CitySportFormPage(),
      ),
      GoRoute(
        name: OnboardingPage.routeName,
        path: '/${OnboardingPage.routeName}',
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        name: HomePage.routeName,
        path: '/${HomePage.routeName}',
        builder: (context, state) => const HomePage(),
      ),
    ],
    redirect: (context, state) {
      if (state.fullPath?.contains(AuthFormPage.routeName) ?? false) {
        return null;
      }

      return context.read<AuthCubit>().state.maybeMap(
        orElse: () {
          return null;
        },
        authenticated: (authenticated) {
          if(authenticated.isNewUser) {
            return '/${CitySportFormPage.routeName}';
          }
          return '/${HomePage.routeName}';
        },
        unauthenticated: (_) {
          return '/${OnboardingPage.routeName}';
        },
      );
    },
  );
}
