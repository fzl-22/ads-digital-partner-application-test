import 'package:ads_digital_partner_application_test/features/home/presentation/widgets/category_card.dart';
import 'package:ads_digital_partner_application_test/features/home/presentation/widgets/profile_container.dart';
import 'package:ads_digital_partner_application_test/features/home/presentation/widgets/search_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 48),
            decoration: BoxDecoration(
              color: Get.theme.colorScheme.primary,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const ProfileContainer(),
                Positioned(
                  bottom: -150, // Adjust this value based on your design
                  left: -150,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: -28,
                  left: 16,
                  right: 16,
                  child: SearchField(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Top Categories",
                  style: Get.theme.textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 128,
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CategoryCard(
                  category: controller.categories[index],
                  onPressed: () {},
                );
              },
              itemCount: controller.categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
