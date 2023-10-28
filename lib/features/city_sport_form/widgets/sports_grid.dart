import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_play/assets/assets.dart';
import 'package:just_play/features/city_sport_form/cubit/city_sport_form_cubit.dart';
import 'package:just_play/theme/theme.dart';
import 'package:just_play/utils/alerts.dart';

class SportsGrid extends StatelessWidget {
  const SportsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<CitySportFormCubit, CitySportFormState>(
      listener: (context, state) {
        if (state.sport != null) {
          Navigator.of(context).pop();
          showSnackBar(
            context,
            'Perfect!\nProfile created!',
          );
        }
      },
      builder: (context, state) {
        final bloc = context.read<CitySportFormCubit>();
        return Padding(
          padding: ThemePadding.insetAllLarge,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Select your sport',
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: ThemePadding.xl),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: GridView.builder(
                  itemCount: state.city!.sports.length,
                  itemBuilder: (context, index) {
                    final sport = state.city!.sports[index];
                    return FadeInUp(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () async {
                          await bloc.saveUserID();
                          bloc.selectSport(
                            state.city!.sports[index],
                          );
                        },
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          padding: ThemePadding.insetAllMedium,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                '${Images.sports}/${sport.name.toLowerCase()}.png',
                                height: 60,
                              ),
                              Text(
                                sport.name,
                                style: theme.textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: ThemePadding.medium,
                    mainAxisSpacing: ThemePadding.medium,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
