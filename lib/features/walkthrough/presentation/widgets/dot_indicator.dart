import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;

  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 2),
      child: AnimatedContainer(
        height: 4,
        width: 4,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? Get.theme.colorScheme.primary : Get.theme.colorScheme.tertiary,
        ),
        duration: const Duration(milliseconds: 200),
      ),
    );
  }
}
