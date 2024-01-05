import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  final pageController = PageController().obs;
  final RxInt activeIndex = 0.obs;

  bool isActive(int index) {
    return index == activeIndex.value;
  }

  void setActiveIndex(int index) {
    activeIndex.value = index;
  }

  void animateToPage(int index) {
    setActiveIndex(index);
    pageController.value.jumpToPage(
      index,

      // duration: const Duration(
      //   milliseconds: 300,
      // ), // Adjust the duration as needed
      // curve: Curves.easeInOut, // Adjust the curve as needed
    );
  }
}
