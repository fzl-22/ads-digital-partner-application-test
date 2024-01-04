// ignore_for_file: unnecessary_overrides

import 'package:ads_digital_partner_application_test/infrastructure/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalkthroughController extends GetxController {
  final pageController = PageController().obs;
  final activePage = 0.obs;
  final pages = [
    {
      "image": "assets/images/walkthrough/first.png",
      "title": "View and buy Medicine online",
      "description":
          "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
    },
    {
      "image": "assets/images/walkthrough/second.png",
      "title": "Online medical & Healthcare",
      "description":
          "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
    },
    {
      "image": "assets/images/walkthrough/third.png",
      "title": "Get Delivery on time",
      "description":
          "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
    },
  ];

  void onPageViewChanged(int page) {
    activePage.value = page;
  }

  void onNextPageView() {
    if (activePage.value == pages.length - 1) {
      onExitPage();
      return;
    }

    pageController.value.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  void onExitPage() {
    Get.offAllNamed(Routes.WELCOME);
  }

  @override
  void onClose() {
    pageController.value.dispose();
    super.onClose();
  }
}
