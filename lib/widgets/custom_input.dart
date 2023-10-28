import 'package:flutter/material.dart';
import 'package:just_play/theme/theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    required this.formControl,
    this.keyboardType = TextInputType.text,
    super.key,
    this.hintText,
    this.labelText,
    this.validationMessages,
    this.textInputAction,
    this.margin,
    this.obscureText = false,
  });

  final TextInputType keyboardType;
  final String? hintText;
  final String? labelText;
  final FormControl<String> formControl;
  final Map<String, String Function(Object)>? validationMessages;
  final TextInputAction? textInputAction;
  final EdgeInsetsDirectional? margin;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(ThemePadding.medium),
      child: ReactiveTextField<String>(
        maxLength: 100,
        obscureText: obscureText,
        formControl: formControl,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        validationMessages: validationMessages,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          counterText: '',
        ),
        onEditingComplete: (_) {
          FocusScope.of(context).nextFocus();
        },
      ),
    );
  }
}
