import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:just_play/assets/assets.dart';
import 'package:just_play/features/auth_form/auth_form.dart';
import 'package:just_play/theme/padding.dart';
import 'package:just_play/widgets/widgets.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  static const String routeName = 'onboarding';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.cover),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.white.withOpacity(0.8),
              ],
              begin: Alignment.topCenter,
              stops: const [0.0, 1],
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: ThemePadding.medium,
                  vertical: ThemePadding.large,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pickup games,\nleagues and tournaments near you.',
                      style: theme.textTheme.displayLarge!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const Brand(
                      size: 200,
                    ),
                    Column(
                      children: [
                        CustomElevatedButton(
                          mainAxisSize: MainAxisSize.max,
                          isSecondary: true,
                          onPressed: () {
                            context.pushNamed(
                              AuthFormPage.routeName,
                              extra:
                                  const AuthFormArgs(type: AuthFormType.login),
                            );
                          },
                          text: 'I already have an account',
                        ),
                        CustomElevatedButton(
                          mainAxisSize: MainAxisSize.max,
                          onPressed: () {
                            context.pushNamed(
                              AuthFormPage.routeName,
                              extra:
                                  const AuthFormArgs(type: AuthFormType.signUp),
                            );
                          },
                          text: 'Sign Up',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
