import 'package:flutter/material.dart';
import 'package:just_play/theme/theme.dart';

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
                  CircularProgressIndicator.adaptive(
                    backgroundColor:
                        isSecondary ? AppColors.primary : Colors.white,
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
