import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_play/features/auth/cubit/cubit.dart';
import 'package:just_play/features/city_sport_form/cubit/cubit.dart';
import 'package:just_play/features/city_sport_form/widgets/widgets.dart';
import 'package:just_play/injection.dart';

class CitySportFormPage extends StatelessWidget {
  const CitySportFormPage({super.key});

  static const String routeName = 'city-sport-form';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => getIt<CitySportFormCubit>()..getCities(),
      child: Scaffold(
        body: BlocConsumer<CitySportFormCubit, CitySportFormState>(
          listener: (context, state) {
            if (state.sport != null && state.city != null) {
              context.read<AuthCubit>().authCheck().first;
            }
          },
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                SliverAppBar.medium(
                  centerTitle: false,
                  title: Text(
                    'Select your city',
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                if (state.isLoading)
                  const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  ),
                if (state.showError)
                  const SliverFillRemaining(
                    child: ErrorLoad(),
                  ),
                SliverList.builder(
                  itemCount: state.cities.length,
                  itemBuilder: (context, index) {
                    return CityListTile(
                      index: index,
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
