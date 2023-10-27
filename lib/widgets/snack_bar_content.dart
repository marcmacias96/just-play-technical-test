import 'package:flutter/material.dart';
import 'package:just_play/theme/theme.dart';

class SnackBarContent extends StatelessWidget {
  const SnackBarContent({
    required this.isSuccess,
    required this.message,
    super.key,
  });
  final bool isSuccess;
  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Text(
            message,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: isSuccess ? theme.colorScheme.onPrimary : Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(width: ThemePadding.medium),
        Icon(
          isSuccess ? Icons.check_circle : Icons.error,
          color: isSuccess ? Colors.green : Colors.red,
        ),
      ],
    );
  }
}
