import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_play/assets/assets.dart';
import 'package:just_play/features/auth/cubit/cubit.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  static const String routePath = '/';

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  void initState() {
    context.read<AuthCubit>().authCheck().first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Images.icon,
          height: 100,
        ),
      ),
    );
  }
}
