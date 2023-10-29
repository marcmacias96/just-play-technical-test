import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_play/features/city_sport_form/cubit/cubit.dart';
import 'package:just_play/features/city_sport_form/widgets/widgets.dart';
import 'package:just_play/theme/theme.dart';

class CityListTile extends StatelessWidget {
  const CityListTile({
    required this.index,
    super.key,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = context.read<CitySportFormCubit>().state;

    return FadeIn(
      delay: Duration(milliseconds: (index + 1) * 150),
      child: InkWell(
        onTap: () => onTap(context, state),
        child: Padding(
          padding: ThemePadding.insetAllMedium,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    state.cities[index].image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.white.withOpacity(0.7),
                    ],
                    stops: const [
                      0.3,
                      0.65,
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
                child: ListTile(
                  title: Text(
                    state.cities[index].name,
                    style: theme.textTheme.displayLarge,
                  ),
                  subtitle: Text(
                    '${state.cities[index].state},'
                    ' ${state.cities[index].country}',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onTap(BuildContext context, CitySportFormState state) {
    context.read<CitySportFormCubit>().selectCity(state.cities[index]);

    showModalBottomSheet<void>(
      context: context,
      enableDrag: false,
      isScrollControlled: true,
      showDragHandle: true,
      backgroundColor: Colors.white,
      builder: (ctx) {
        return BlocProvider.value(
          value: context.read<CitySportFormCubit>(),
          child: const SportsGrid(),
        );
      },
    );
  }
}
