import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingDivider extends StatelessWidget {
  const SettingDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Get.theme.colorScheme.tertiary.withAlpha(64),
      indent: 56,
      height: 0,
    );
  }
}
