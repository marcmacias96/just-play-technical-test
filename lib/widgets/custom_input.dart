import 'package:flutter/material.dart';
import 'package:just_play/theme/theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

/// A customizable input field widget.
///
/// This widget provides a customizable input field that can be integrated with
/// reactive forms. It allows you to define the input field's properties such
/// as the keyboard type, hint text, label text, and more.
///
/// Parameters:
///  - [keyboardType]: The type of keyboard to display when the input field
///    is focused, e.g., text, email, number, etc.
///  - [hintText]: The hint text displayed within the input field when it is
///    empty and not focused.
///  - [labelText]: The label text displayed above the input field.
///  - [formControl]: The form control that manages the input field's value and
///    validation.
///  - [validationMessages]: A map of validation messages to display when the
///    form control's value is not valid. The keys should match the names of
///    validation functions in the reactive forms library.
///  - [textInputAction]: The type of keyboard action to display in the input
///    field, e.g., "done," "next," or "search."
///  - [margin]: The margin around the input field. If not provided, it defaults
///    to a standard margin value.
///  - [obscureText]: Set to `true` to obscure the input text, e.g., for
///    password input fields.
///
/// Example:
///
/// ```dart
/// CustomInput(
///   formControl: myTextControl,
///   keyboardType: TextInputType.emailAddress,
///   hintText: 'Enter your email',
///   labelText: 'Email',
///   validationMessages: {
///     'required': 'Email is required',
///     'email': 'Enter a valid email address',
///   },
///   textInputAction: TextInputAction.next,
///   margin: const EdgeInsets.symmetric(horizontal: 16.0),
///   obscureText: false,
/// )
/// ```
///
/// In the example above, a `CustomInput` widget is used to 
/// create an input field
/// for entering an email address. Various properties like the keyboard type,
/// hint text, and validation messages are customized to suit the specific input
/// field's requirements.
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
