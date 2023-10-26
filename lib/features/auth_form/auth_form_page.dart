import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum AuthFormType { signUp, login }

class AuthFormArgs extends Equatable {
  const AuthFormArgs({required this.type, this.onSuccess});

  final AuthFormType type;
  final VoidCallback? onSuccess;

  @override
  List<Object?> get props => [type, onSuccess];
}


class AuthFormPage extends StatelessWidget {
  const AuthFormPage({required this.args, super.key});

  final AuthFormArgs args;

  static const String routeName = 'auth-form';

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
