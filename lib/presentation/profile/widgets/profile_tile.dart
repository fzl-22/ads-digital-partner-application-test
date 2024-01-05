import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 64,
            width: 64,
            child: Image.asset(
              "assets/images/profile/profile-picture.png",
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Lorem Ipsum",
                style: Get.theme.textTheme.titleLarge!.copyWith(
                  fontFamily: "Hanken Grotesk",
                  fontSize: 20,
                ),
              ),
              Text(
                "Welcome to Apotech",
                style: Get.theme.textTheme.bodyMedium!.copyWith(
                  fontFamily: "Hanken Grotesk",
                  color: Get.theme.colorScheme.tertiary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
