import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthLinkButton extends StatelessWidget {
  const AuthLinkButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: Get.textTheme.bodyMedium!.copyWith(
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w300,
          color: Get.theme.colorScheme.tertiary,
          shadows: [
            Shadow(
              color:
                  Colors.grey.withAlpha(128), // Choose the color of the shadow
              blurRadius: 8.0, // Adjust the blur radius for the shadow effect
              offset: const Offset(
                -2.0,
                2.0,
              ), // Set the horizontal and vertical offset for the shadow
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
