import 'package:flutter/material.dart';
import 'package:just_play/assets/assets.dart';

class Brand extends StatelessWidget {
  const Brand({
    required this.size,
    super.key,
    this.alignment = Alignment.center,
  });

  final Alignment alignment;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Image.asset(
        Images.icon,
        width: size,
        height: size,
      ),
    );
  }
}
