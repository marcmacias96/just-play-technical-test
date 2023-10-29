import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:just_play/data/league/league.dart';

class LogoLeading extends StatelessWidget {
  const LogoLeading({
    required this.team,
    required this.index,
    super.key,
  });

  final Team team;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${index + 1}', style: Theme.of(context).textTheme.titleLarge),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: team.crest.contains('.svg')
                    ? Svg(
                        team.crest,
                        source: SvgSource.network,
                      ) as ImageProvider<Object>
                    : NetworkImage(
                        team.crest,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
