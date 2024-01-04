import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.label,
    required this.onPressed,
  })  : useIcon = false,
        useText = false,
        icon = null;

  const ActionButton.icon({
    super.key,
    required this.label,
    required this.onPressed,
    required this.icon,
  })  : useIcon = true,
        useText = false;

  const ActionButton.text({
    super.key,
    required this.label,
    required this.onPressed,
  })  : useIcon = false,
        useText = true,
        icon = null;

  final Widget label;
  final VoidCallback onPressed;
  final Widget? icon;
  final bool useIcon;
  final bool useText;

  @override
  Widget build(BuildContext context) {
    if (useText) {
      return TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Get.theme.colorScheme.tertiary,
          textStyle: Get.theme.textTheme.titleSmall,
          padding: const EdgeInsets.all(14)
        ),
        onPressed: onPressed,
        child: label,
      );
    }

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: useIcon
            ? Get.theme.textTheme.titleSmall
            : Get.theme.textTheme.titleMedium,
        side: useIcon
            ? BorderSide(
                color: Get.theme.colorScheme.tertiary.withAlpha(64),
                width: 2,
              )
            : null,
        backgroundColor: useIcon
            ? Get.theme.colorScheme.onPrimary
            : Get.theme.colorScheme.primary,
        foregroundColor:
            useIcon ? const Color(0xFF474b75) : Get.theme.colorScheme.onPrimary,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        padding: const EdgeInsets.all(14),
      ),
      onPressed: onPressed,
      child: useIcon
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: icon!,
                ),
                const SizedBox(
                  width: 12,
                ),
                label,
              ],
            )
          : label,
    );
  }
}
