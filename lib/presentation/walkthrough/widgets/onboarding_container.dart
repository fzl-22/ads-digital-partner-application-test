import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingContainer extends StatelessWidget {
  const OnboardingContainer({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(64),
      child: Column(
        children: [
          Image.asset(
            image,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 48,
          ),
          Text(
            title,
            style: Get.theme.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            description,
            style: Get.theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w300,
              color: Get.theme.colorScheme.tertiary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
