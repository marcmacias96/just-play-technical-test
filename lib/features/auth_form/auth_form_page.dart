import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:just_play/features/auth/auth.dart';
import 'package:just_play/features/auth_form/cubit/auth_form_cubit.dart';
import 'package:just_play/features/auth_form/model/credentials.dart';
import 'package:just_play/features/city_sport_form/city_sport_form.dart';
import 'package:just_play/features/home/home.dart';
import 'package:just_play/injection.dart';
import 'package:just_play/theme/padding.dart';
import 'package:just_play/utils/utils.dart';
import 'package:just_play/widgets/widgets.dart';
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
        body: BlocConsumer<AuthFormCubit, AuthFormState>(
          listener: _handleListener,
          builder: (context, state) {
            final theme = Theme.of(context);
            return CustomScrollView(
              slivers: [
                SliverAppBar.medium(
                  elevation: 0,
                  titleSpacing: 0,
                  centerTitle: false,
                  title: Text(
                    widget.args.type == AuthFormType.login
                        ? 'Login'
                        : 'Sign Up',
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SliverToBoxAdapter(
                  child: CredentialsFormBuilder(
                    model: credentialsModel,
                    builder: (context, formModel, child) {
                      return Padding(
                        padding: const EdgeInsets.all(ThemePadding.medium),
                        child: Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: ThemePadding.insetAllMedium,
                                child: Text(
                                  'We believe you should be able to play'
                                  ' the sport you love when and where you want'
                                  ' to.\nWith the Just Play app, you can. No'
                                  ' hassle. No commitment. Just Play.',
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              CustomInput(
                                formControl: formModel.emailControl,
                                validationMessages: {
                                  ValidationMessage.required: (_) =>
                                      'The email must not be empty',
                                },
                                hintText: 'Email',
                                labelText: 'Email',
                              ),
                              const SizedBox(height: 8),
                              CustomInput(
                                formControl: formModel.passwordControl,
                                obscureText: true,
                                validationMessages: {
                                  ValidationMessage.required: (_) =>
                                      'The password must not be empty',
                                  ValidationMessage.minLength: (_) =>
                                      'The password must be'
                                      ' at least 6 characters',
                                },
                                textInputAction: TextInputAction.done,
                                hintText: 'Password',
                                labelText: 'Password',
                              ),
                              const SizedBox(height: ThemePadding.xxxl),
                              ReactiveCredentialsFormConsumer(
                                builder: (context, form, child) {
                                  return CustomElevatedButton(
                                    loading: state.isLoading,
                                    mainAxisSize: MainAxisSize.max,
                                    onPressed: form.form.valid
                                        ? () => handleAction(
                                              context,
                                              credentials: formModel.model,
                                            )
                                        : null,
                                    text: widget.args.type == AuthFormType.login
                                        ? 'Login'
                                        : 'Get Started',
                                  );
                                },
                              ),
                              const Brand(
                                size: 200,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  void _handleListener(BuildContext context, AuthFormState state) {
    state.authFailureOrSuccess?.fold(
      (failure) => showSnackBar(
        context,
        failure.maybeMap(
          orElse: () => 'Unknown error',
          serverError: (_) => 'Server error',
          emailAlreadyInUse: (_) => 'Email already in use',
          invalidEmailAndPasswordCombination: (_) =>
              'Invalid email and password combination',
        ),
        type: SnackBarType.error,
      ),
      (unit) => null,
    );
  }
}
