import 'package:flutter/material.dart';
import 'package:just_play/theme/theme.dart';


/// A customizable elevated button with various properties.
///
/// This widget allows you to create a customized elevated button with options
/// for text, icon, loading indicator, and more.
///
/// Parameters:
///  - [text]: The text to display on the button.
///  - [onPressed]: A callback function that is called when 
///    the button is pressed.
///  - [enabled]: Whether the button is enabled or disabled. A disabled button
///    doesn't respond to user interactions.
///  - [loading]: Set to `true` to display a loading indicator instead of the
///    button content. When loading is `true`, the button
///    is automatically disabled.
///  - [icon]: An optional icon to display next to the button text.
///  - [isSecondary]: Set to `true` to style the button as a secondary button
///    with a white background, otherwise it uses the primary button color.
///  - [margin]: The margin around the button. If not provided, it defaults to a
///    standard margin value.
///  - [mainAxisSize]: Defines how much space the button occupies 
///     in the main axis.
///    It controls the behavior of the button within a flex layout.
///
/// Example:
///
/// ```dart
/// CustomElevatedButton(
///   text: 'Submit',
///   onPressed: () {
///     // Handle button click action here.
///   },
///   enabled: true,
///   loading: false,
///   icon: Icons.send,
///   isSecondary: false,
///   margin: const EdgeInsets.symmetric(horizontal: 16.0),
///   mainAxisSize: MainAxisSize.min,
/// )
/// ```
///
/// In the example above, a `CustomElevatedButton` is created with various
/// customization options, including text, an icon, and a callback function for
/// the `onPressed` event. You can further customize the button's appearance and
/// behavior by adjusting the parameters to suit your needs.
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.text = '',
    this.onPressed,
    this.enabled = true,
    this.loading = false,
    this.icon,
    this.isSecondary = false,
    this.margin,
    this.mainAxisSize = MainAxisSize.min,
  });

  final String text;
  final VoidCallback? onPressed;
  final bool enabled;
  final bool loading;
  final IconData? icon;
  final bool isSecondary;
  final EdgeInsetsDirectional? margin;
  final MainAxisSize mainAxisSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ??
          const EdgeInsets.symmetric(
            horizontal: ThemePadding.medium,
          ),
      child: ElevatedButton(
        onPressed: enabled & !loading ? onPressed : null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled) && !loading) {
                return Colors.grey; // defer to the defaults
              }
              return isSecondary ? Colors.white : AppColors.primary;
            },
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: mainAxisSize,
          children: loading
              ? [
                  Padding(
                    padding: const EdgeInsets.all(ThemePadding.medium),
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor:
                          isSecondary ? AppColors.primary : Colors.white,
                    ),
                  ),
                ]
              : [
                  if (icon != null)
                    Icon(
                      icon,
                      color: isSecondary ? AppColors.primary : Colors.white,
                    ),
                  if (icon != null) const SizedBox(width: 10),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: isSecondary ? AppColors.primary : Colors.white,
                        ),
                  ),
                ],
        ),
      ),
    );
  }
}
