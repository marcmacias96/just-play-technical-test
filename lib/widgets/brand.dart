import 'package:flutter/material.dart';
import 'package:just_play/assets/assets.dart';


/// A widget that displays a brand logo or icon.
///
/// This widget is used to display a brand logo or icon within your app. 
/// It allows you to specify the size and alignment of the logo/icon.
///
/// Parameters:
///  - [size]: The size of the brand logo or icon, which is both the width and
///    height of the image.
///  - [alignment]: The alignment of the brand logo/icon within its container.
///    The default alignment is centered.
///
/// Example:
///
/// ```dart
/// Brand(
///   size: 80.0,
///   alignment: Alignment.centerLeft,
/// )
/// ```
///
/// In the example above, a `Brand` widget is used to display a brand 
/// logo with a  size of 80.0, and it is aligned to the center-left 
/// of its container. You can
/// adjust the size and alignment to match your app's branding requirements.
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
