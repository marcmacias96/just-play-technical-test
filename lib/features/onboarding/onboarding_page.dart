import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:just_play/features/auth_form/auth_form.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  static const String routeName = 'onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Onboarding Page',
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(
                  AuthFormPage.routeName,
                  extra: const AuthFormArgs(type: AuthFormType.login),
                );
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(
                  AuthFormPage.routeName,
                  extra: const AuthFormArgs(type: AuthFormType.signUp),
                );
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
