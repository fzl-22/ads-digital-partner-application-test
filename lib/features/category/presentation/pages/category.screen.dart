import 'package:ads_digital_partner_application_test/features/home/presentation/controllers/home.controller.dart';
import 'package:ads_digital_partner_application_test/features/home/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category.controller.dart';

class CategoryScreen extends GetView<CategoryController> {
  const CategoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    final title = Get.arguments[0];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        titleTextStyle: Get.theme.textTheme.titleMedium,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset("assets/images/home/promotion-card.png"),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "All Products",
                style: Get.theme.textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height/1.45),
                  children: [
                    ...homeController.products.map(
                      (product) => ProductCard(
                        product: product,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
