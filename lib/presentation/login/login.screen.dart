import 'package:ads_digital_partner_application_test/presentation/register/widgets/auth_link_button.dart';
import 'package:ads_digital_partner_application_test/presentation/shared/widgets/action_button.dart';
import 'package:ads_digital_partner_application_test/presentation/shared/widgets/text_input_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: controller.formKey.value,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Welcome Back!",
                  style: Get.theme.textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 36,
                ),
                TextInputField(
                  controller: controller.usernameController.value,
                  label: const Text("Username"),
                  keyboardType: TextInputType.name,
                  validator: controller.validateUsername,
                  prefixIcon: const ImageIcon(
                    AssetImage("assets/icons/profile.png"),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextInputField.password(
                  controller: controller.passwordController.value,
                  label: const Text("Password"),
                  keyboardType: TextInputType.visiblePassword,
                  validator: controller.validatePassword,
                  prefixIcon: const ImageIcon(
                    AssetImage("assets/icons/lock.png"),
                  ),
                  suffixIcon: Text(
                    "Forgot?",
                    style: Get.theme.textTheme.bodySmall!.copyWith(
                      color: Get.theme.colorScheme.tertiary,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                ActionButton(
                  label: const Text("SIGN IN"),
                  onPressed: controller.onLogin,
                ),
                const SizedBox(
                  height: 48,
                ),
                AuthLinkButton(
                  text: "Don't have an account? Sign Up",
                  onTap: controller.onNavigateToRegister,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
