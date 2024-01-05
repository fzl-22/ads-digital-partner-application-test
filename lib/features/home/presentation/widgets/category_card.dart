import 'package:ads_digital_partner_application_test/features/home/data/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
    required this.onPressed,
  });

  final CategoryModel category;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 24),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: Get.theme.colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 20.0,
              spreadRadius: 10.0,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(category.background),
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Image.asset(category.icon),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              category.title,
              style: Get.theme.textTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
