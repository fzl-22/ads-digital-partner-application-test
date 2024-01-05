import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(56),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10.0,
            spreadRadius: 5.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search Medicine and Healthcare products",
          hintStyle: Get.theme.textTheme.bodyMedium!.copyWith(
            color: Get.theme.colorScheme.tertiary,
          ),
          filled: true,
          fillColor: Get.theme.colorScheme.surface,
          prefixIcon: Container(
            margin: const EdgeInsets.only(left: 12),
            child: const Icon(Icons.search_rounded),
          ),
          prefixIconColor: Get.theme.colorScheme.tertiary,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(56),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(56),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
