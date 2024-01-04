import 'package:ads_digital_partner_application_test/presentation/walkthrough/widgets/dot_indicator.dart';
import 'package:ads_digital_partner_application_test/presentation/walkthrough/widgets/navigation_button.dart';
import 'package:ads_digital_partner_application_test/presentation/walkthrough/widgets/onboarding_container.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/walkthrough.controller.dart';

class WalkthroughScreen extends GetView<WalkthroughController> {
  const WalkthroughScreen({super.key});

  Widget _buildIndicators() {
    return Row(
      children: List.generate(
        controller.pages.length,
        (index) => DotIndicator(
          isActive: index == controller.activePage.value,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController.value,
                itemCount: controller.pages.length,
                onPageChanged: controller.onPageViewChanged,
                itemBuilder: (context, index) {
                  return OnboardingContainer(
                    image: controller.pages[index]["image"]!,
                    title: controller.pages[index]["title"]!,
                    description: controller.pages[index]["description"]!,
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavigationButton.unfocused(
                    text: "Skip",
                    onPressed: controller.onExitPage,
                  ),
                  Obx(
                    () => _buildIndicators(),
                  ),
                  NavigationButton(
                    text: "Next",
                    onPressed: controller.onNextPageView,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
