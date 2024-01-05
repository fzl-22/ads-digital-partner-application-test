import 'package:ads_digital_partner_application_test/presentation/shared/widgets/action_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/welcome.controller.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (orientation == Orientation.portrait)
                  Container(
                    padding: const EdgeInsets.all(36),
                    child: Image.asset(
                      "assets/images/welcome/welcome.png",
                      alignment: Alignment.center,
                    ),
                  ),
                if (orientation == Orientation.portrait)
                  const SizedBox(
                    height: 24,
                  ),
                Text(
                  "Welcome to Apotech",
                  style: Get.theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Do you want some help with your health to get better life?",
                  style: Get.theme.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w300,
                    color: Get.theme.colorScheme.tertiary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24,
                ),
                ActionButton(
                  onPressed: controller.onNavigateToRegister,
                  label: const Text("SIGN UP WITH EMAIL"),
                ),
                const SizedBox(
                  height: 8,
                ),
                ActionButton.icon(
                  onPressed: () {},
                  label: const Text("CONTINUE WITH FACEBOOK"),
                  icon: Image.asset("assets/images/welcome/facebook.png"),
                ),
                const SizedBox(
                  height: 8,
                ),
                ActionButton.icon(
                  onPressed: () {},
                  label: const Text("CONTINUE WITH GMAIL"),
                  icon: Image.asset("assets/images/welcome/google.png"),
                ),
                const SizedBox(
                  height: 8,
                ),
                ActionButton.text(
                  onPressed: controller.onNavigateToLogin,
                  label: const Text("LOGIN"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
