import 'package:flutter/material.dart';
import 'package:just_play/theme/theme.dart';


/// A widget for displaying content in a snack bar.
///
/// This widget is used to display content within a snack bar, which is often
/// used to show brief messages or notifications to the user. The content can
/// include a message and an icon to indicate the type of notification (success
/// or error).
///
/// Parameters:
///  - [isSuccess]: A boolean value that determines the type of the notification
///    If `true`, it's a success message; if `false`, it's an error message.
///  - [message]: The text message to be displayed in the snack bar.
///
/// Example:
///
/// ```dart
/// SnackBarContent(
///   isSuccess: true,
///   message: 'Operation was successful!',
/// )
/// ```
///
/// In the example above, a `SnackBarContent` widget is used to create a success
/// message in a snack bar with the specified message. 
/// You can adjust the `isSuccess`
/// parameter to indicate different types of messages, 
/// and customize the appearance
/// of the text and icon accordingly.
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
              color: isSuccess ? Colors.black : Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(width: ThemePadding.medium),
        Icon(
          isSuccess ? Icons.check_circle : Icons.error_rounded,
          color: isSuccess ? Colors.green : Colors.white,
        ),
      ],
    );
  }
}
