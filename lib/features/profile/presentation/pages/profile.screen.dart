
import 'package:ads_digital_partner_application_test/features/profile/presentation/widgets/profile_tile.dart';
import 'package:ads_digital_partner_application_test/features/profile/presentation/widgets/setting_divider.dart';
import 'package:ads_digital_partner_application_test/features/profile/presentation/widgets/setting_tile.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile.controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        titleTextStyle: Get.theme.textTheme.titleMedium,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ProfileTile(),
            SettingTile(
              icon: "assets/icons/account.png",
              title: "Private Account",
              onTap: () {},
            ),
            const SettingDivider(),
            SettingTile(
              icon: "assets/icons/consult.png",
              title: "My Consults",
              onTap: () {},
            ),
            const SettingDivider(),
            SettingTile(
              icon: "assets/icons/order.png",
              title: "My Orders",
              onTap: () {},
            ),
            const SettingDivider(),
            SettingTile(
              icon: "assets/icons/billing.png",
              title: "Billing",
              onTap: () {},
            ),
            const SettingDivider(),
            SettingTile(
              icon: "assets/icons/faq.png",
              title: "Faq",
              onTap: () {},
            ),
            const SettingDivider(),
            SettingTile(
              icon: "assets/icons/setting.png",
              title: "Settings",
              onTap: () {},
            ),
            const SettingDivider(),
          ],
        ),
      ),
    );
  }
}
