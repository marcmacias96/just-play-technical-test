import 'package:flutter/material.dart';

class InheritedAnimations extends InheritedWidget {
  const InheritedAnimations({
    required this.repeatAnimationsEnabled,
    required super.child,
    super.key,
  });

  final bool repeatAnimationsEnabled;

  static InheritedAnimations of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<InheritedAnimations>();
    assert(result != null, 'No InheritedAnimations found in context');

    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
