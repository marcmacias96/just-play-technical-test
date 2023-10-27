import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:just_play/features/auth_form/cubit/auth_form_cubit.dart';
import 'package:just_play/features/auth_form/model/credentials.dart';
import 'package:just_play/features/city_sport_form/city_sport_form.dart';
import 'package:just_play/features/home/home.dart';
import 'package:just_play/injection.dart';
import 'package:reactive_forms/reactive_forms.dart';

enum AuthFormType { signUp, login }

class AuthFormArgs extends Equatable {
  const AuthFormArgs({required this.type});

  final AuthFormType type;

  @override
  List<Object?> get props => [type];
}

class AuthFormPage extends StatefulWidget {
  const AuthFormPage({required this.args, super.key});

  final AuthFormArgs args;

  static const String routeName = 'auth-form';

  @override
  State<AuthFormPage> createState() => _AuthFormPageState();
}

class _AuthFormPageState extends State<AuthFormPage> {
  final credentialsModel = Credentials(
    email: '',
    password: '',
  );

  void handleAction(
    BuildContext context, {
    required Credentials credentials,
  }) {
    if (widget.args.type == AuthFormType.login) {
      context
          .read<AuthFormCubit>()
          .signInWithEmailAndPasswordPressed(credentials);
    } else {
      context
          .read<AuthFormCubit>()
          .registerWithEmailAndPasswordPressed(credentials);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthFormCubit>(),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocConsumer<AuthFormCubit, AuthFormState>(
          buildWhen: (previous, current) =>
              previous.authFailureOrSuccess != current.authFailureOrSuccess,
          listener: (context, state) {
            state.authFailureOrSuccess?.fold(
              (failure) => null,
              (unit) => widget.args.type == AuthFormType.login
                  ? context.pushNamed(HomePage.routeName)
                  : context.pushNamed(CitySportFormPage.routeName),
            );
          },
          builder: (context, state) {
            return Column(
              children: [
                CredentialsFormBuilder(
                  model: credentialsModel,
                  builder: (context, formModel, child) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ReactiveTextField<String>(
                          formControl: formModel.emailControl,
                          validationMessages: {
                            ValidationMessage.required: (_) =>
                                'The email must not be empty',
                          },
                          decoration: const InputDecoration(labelText: 'Email'),
                        ),
                        const SizedBox(height: 8),
                        ReactiveTextField<String>(
                          formControl: formModel.passwordControl,
                          obscureText: true,
                          validationMessages: {
                            ValidationMessage.required: (_) =>
                                'The password must not be empty',
                          },
                          textInputAction: TextInputAction.done,
                          decoration:
                              const InputDecoration(labelText: 'Password'),
                        ),
                        const SizedBox(height: 8),
                        ReactiveCredentialsFormConsumer(
                          builder: (context, form, child) {
                            return ElevatedButton(
                              onPressed: form.form.valid
                                  ? () => handleAction(
                                        context,
                                        credentials: formModel.model,
                                      )
                                  : null,
                              child: const Text('Submit'),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
