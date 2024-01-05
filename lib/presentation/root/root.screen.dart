import 'package:ads_digital_partner_application_test/presentation/add/controllers/add.controller.dart';
import 'package:ads_digital_partner_application_test/presentation/cart/controllers/cart.controller.dart';
import 'package:ads_digital_partner_application_test/presentation/home/controllers/home.controller.dart';
import 'package:ads_digital_partner_application_test/presentation/notification/controllers/notification.controller.dart';
import 'package:ads_digital_partner_application_test/presentation/profile/controllers/profile.controller.dart';
import 'package:ads_digital_partner_application_test/presentation/root/widgets/navigation_bar_item.dart';
import 'package:ads_digital_partner_application_test/presentation/screens.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/root.controller.dart';

class RootScreen extends GetView<RootController> {
  const RootScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController.value,
        onPageChanged: (value) {
          controller.setActiveIndex(value);
        },
        children: [
          GetBuilder<HomeController>(
            builder: (_) => const HomeScreen(),
            init: HomeController(),
          ),
          GetBuilder<NotificationController>(
            builder: (_) => const NotificationScreen(),
            init: NotificationController(),
          ),
          GetBuilder<AddController>(
            builder: (_) => const AddScreen(),
            init: AddController(),
          ),
          GetBuilder<CartController>(
            builder: (_) => const CartScreen(),
            init: CartController(),
          ),
          GetBuilder<ProfileController>(
            builder: (_) => const ProfileScreen(),
            init: ProfileController(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Get.theme.colorScheme.primary.withOpacity(0.1),
              blurRadius: 64,
            ),
          ],
        ),
        child: Obx(
          () => BottomAppBar(
            surfaceTintColor: Get.theme.colorScheme.background,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _bottomNavbarItems(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _bottomNavbarItems() {
    return [
      NavigationBarItem(
        icon: "assets/icons/home.png",
        onPressed: () {
          controller.animateToPage(0);
        },
        isActive: controller.isActive(0),
      ),
      NavigationBarItem(
        icon: "assets/icons/notification.png",
        onPressed: () {
          controller.animateToPage(1);
        },
        isActive: controller.isActive(1),
      ),
      NavigationBarItem(
        icon: "assets/icons/add.png",
        onPressed: () {
          controller.animateToPage(2);
        },
        isActive: controller.isActive(2),
        isCenter: true,
      ),
      NavigationBarItem(
        icon: "assets/icons/cart.png",
        onPressed: () {
          controller.animateToPage(3);
        },
        isActive: controller.isActive(3),
      ),
      NavigationBarItem(
        icon: "assets/icons/profile.png",
        onPressed: () {
          controller.animateToPage(4);
        },
        isActive: controller.isActive(4),
      ),
    ];
  }
}
