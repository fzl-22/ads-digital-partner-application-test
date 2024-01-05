import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.isActive,
    this.isCenter = false,
  });

  final String icon;
  final VoidCallback onPressed;
  final bool isActive;
  final bool isCenter;

  @override
  Widget build(BuildContext context) {
    if (isCenter) {
      return IconButton.filled(
        style: IconButton.styleFrom(
          padding: const EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        onPressed: onPressed,
        icon: Image.asset(icon),
      );
    }

    return IconButton(
      onPressed: onPressed,
      icon: Image.asset(
        icon,
        width: 24,
        height: 24,
        color: isActive ? Get.theme.colorScheme.primary : null,
      ),
    );
  }
}
