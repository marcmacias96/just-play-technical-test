import 'package:flutter/material.dart';
import 'package:just_play/theme/theme.dart';
import 'package:just_play/widgets/widgets.dart';

void showSnackBar(
  BuildContext context,
  String message, {
  SnackBarType type = SnackBarType.success,
}) {

  final isSuccess = type == SnackBarType.success;
  final snackBar = SnackBar(
    backgroundColor: isSuccess ? Colors.white : AppColors.primary,
    behavior: SnackBarBehavior.floating,
    content: SnackBarContent(
      isSuccess: isSuccess,
      message: message,
    ),
  );

  ScaffoldMessenger.of(context)
    ..clearSnackBars()
    ..showSnackBar(snackBar);
}

//ignore: prefer-match-file-name
enum SnackBarType { error, success }
