import 'package:flutter/widgets.dart';

/// ThemePadding mixin is a organizational structure that gives developers a
/// simple, reusable set of values and helpers
mixin ThemePadding {
  /// Padding of size 0.
  static const none = 0.0;

  /// Padding of size 2.
  static const extraSmall = 2.0;

  /// Padding of size 4.
  static const small = 4.0;

  /// Padding of size 8.
  static const medium = 8.0;

  /// Padding of size 12.
  static const big = 12.0;

  /// Padding of size 16.
  static const large = 16.0;

  /// Padding of size 24.
  static const xl = 24.0;

  /// Padding of size 32.
  static const xxl = 32.0;

  /// Padding of size 42.
  static const xxxl = 42.0;

  /// Padding of size 96.
  static const xxxxl = 96.0;

  /// Padding of size 96.
  static const iconSize = 28.0;

  /// This is the basic padding that is used for items in a list.
  static const insetPrimary = EdgeInsets.symmetric(
    horizontal: large,
    vertical: medium,
  );

  /// Horizontal only EdgeInsets
  static const insetHorizontalSmall = EdgeInsets.symmetric(horizontal: small);
  static const insetHorizontalMedium = EdgeInsets.symmetric(horizontal: medium);
  static const insetHorizontalBig = EdgeInsets.symmetric(horizontal: big);
  static const insetHorizontalLarge = EdgeInsets.symmetric(horizontal: large);
  static const insetHorizontalExtraLarge = EdgeInsets.symmetric(horizontal: xl);
  static const insetHorizontalExtraExtraLarge =
      EdgeInsets.symmetric(horizontal: xxl);
  static const insetHorizontalExtraExtraExtraLarge =
      EdgeInsets.symmetric(horizontal: xxxl);

  /// Vertical only EdgeInsets
  static const insetVerticalSmall = EdgeInsets.symmetric(vertical: small);
  static const insetVerticalMedium = EdgeInsets.symmetric(vertical: medium);
  static const insetVerticalBig = EdgeInsets.symmetric(vertical: big);
  static const insetVerticalLarge = EdgeInsets.symmetric(vertical: large);
  static const insetVerticalExtraLarge = EdgeInsets.symmetric(vertical: xl);

  /// A unified amount of inset is often used for inner padding on containers.
  static const insetAllSmall = EdgeInsets.all(small);
  static const insetAllMedium = EdgeInsets.all(medium);
  static const insetAllBig = EdgeInsets.all(big);
  static const insetAllLarge = EdgeInsets.all(large);
  static const insetAllExtraLarge = EdgeInsets.all(xl);
}
