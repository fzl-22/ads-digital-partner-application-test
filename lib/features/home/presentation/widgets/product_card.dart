import 'package:ads_digital_partner_application_test/core/utils/formatter.dart';
import 'package:ads_digital_partner_application_test/features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.onPressed,
  });

  final ProductModel product;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        surfaceTintColor: Get.theme.colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          height: 264,
          width: 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                height: 154,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFEEEEF0),
                ),
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  product.title,
                  style: Get.theme.textTheme.bodyMedium,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      formatIndonesianPrice(product.price),
                      style: Get.theme.textTheme.titleSmall,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                      decoration: const BoxDecoration(
                          color: Color(0xFFFFC000),
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(24),
                          )),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Get.theme.colorScheme.onPrimary,
                          ),
                          Text(
                            "${product.rating}",
                            style: Get.theme.textTheme.bodyMedium!.copyWith(
                              fontFamily: 'Sophia Pro',
                              fontWeight: FontWeight.w300,
                              color: Get.theme.colorScheme.onPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
