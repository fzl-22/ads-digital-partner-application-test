import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final String icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image.asset(
        icon,
        height: 24,
        width: 24,
      ),
      title: Text(
        title,
        style: Get.theme.textTheme.titleSmall!.copyWith(
          fontFamily: "Hanken Grotesk",
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Image.asset(
        "assets/icons/arrow-forward.png",
        height: 24,
        width: 24,
      ),
    );
  }
}
