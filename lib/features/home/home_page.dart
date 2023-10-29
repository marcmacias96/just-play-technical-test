import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_play/features/auth/cubit/cubit.dart';
import 'package:just_play/features/home/home.dart';
import 'package:just_play/injection.dart';
import 'package:just_play/theme/padding.dart';
import 'package:just_play/utils/alerts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<HomeCubit>()..getLeague(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                SliverAppBar.medium(
                  centerTitle: false,
                  title: Text(
                    state.maybeWhen(
                      orElse: () => 'Loading',
                      loaded: (league) {
                        return league.competition.name;
                      },
                    ),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.logout),
                      onPressed: () {
                        context.read<AuthCubit>().logout();
                        showSnackBar(context, 'Logged out');
                      },
                    ),
                  ],
                ),
                state.maybeWhen(
                  orElse: () => const SliverFillRemaining(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [CircularProgressIndicator.adaptive()],
                      ),
                    ),
                  ),
                  loaded: (league) {
                    return SliverList.builder(
                      itemCount: league.standings[0].table.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: ThemePadding.insetHorizontalLarge,
                          leading: LogoLeading(
                            team: league.standings.first.table[index].team,
                            index: index,
                          ),
                          title: Text(
                            league.standings.first.table[index].team.name,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        );
                      },
                    );
                  },
                  error: (message) => SliverFillRemaining(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            message,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(
                            height: ThemePadding.big,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.read<HomeCubit>().getLeague();
                            },
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: ThemePadding.big,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
