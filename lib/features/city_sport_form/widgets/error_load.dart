import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_play/features/city_sport_form/cubit/cubit.dart';
import 'package:just_play/widgets/widgets.dart';

class ErrorLoad extends StatelessWidget {
  const ErrorLoad({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          children: [
            Text(
              '!Oops!',
              style: theme.textTheme.titleLarge,
            ),
            Text(
              'Something went wrong',
              style: theme.textTheme.titleMedium,
            ),
            CustomElevatedButton(
              onPressed: () => context.read<CitySportFormCubit>().getCities(),
              text: 'Retry',
            ),
          ],
        ),
      ),
    );
  }
}
