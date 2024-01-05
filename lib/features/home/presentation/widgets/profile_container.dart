import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 48,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/home/profile-picture.png",
                height: 42,
                width: 42,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Image.asset(
                      "assets/images/home/notification-white.png",
                      height: 24,
                      width: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    child: Image.asset(
                      "assets/images/home/cart-white.png",
                      height: 24,
                      width: 24,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Hi Lorem",
            style: Get.theme.textTheme.titleLarge!.copyWith(
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
          Text(
            "Welcome to Apotech",
            style: Get.theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w300,
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
