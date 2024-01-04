import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.text,
    required this.onPressed,
  }) : isUnfocused = false;

  const NavigationButton.unfocused({
    super.key,
    required this.text,
    required this.onPressed,
  }) : isUnfocused = true;

  final String text;
  final VoidCallback onPressed;
  final bool isUnfocused;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: isUnfocused
            ? Get.theme.colorScheme.tertiary
            : Get.theme.colorScheme.primary,
        textStyle: isUnfocused
            ? Get.theme.textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.normal,
              )
            : Get.theme.textTheme.labelLarge,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
