import 'package:ads_digital_partner_application_test/presentation/shared/widgets/action_button.dart';
import 'package:ads_digital_partner_application_test/presentation/shared/widgets/text_input_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/register.controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});
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
                  controller: controller.nameController.value,
                  label: const Text("Your Name"),
                  keyboardType: TextInputType.name,
                  validator: controller.validateName,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextInputField(
                  controller: controller.mobilePhoneController.value,
                  label: const Text("Mobile Phone"),
                  keyboardType: TextInputType.number,
                  validator: controller.validateMobilePhone,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextInputField(
                  controller: controller.emailController.value,
                  label: const Text("Email"),
                  keyboardType: TextInputType.emailAddress,
                  validator: controller.validateEmail,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextInputField.password(
                  controller: controller.passwordController.value,
                  label: const Text("Password"),
                  keyboardType: TextInputType.visiblePassword,
                  validator: controller.validatePassword,
                ),
                const SizedBox(
                  height: 48,
                ),
                ActionButton(
                  label: const Text("SIGN IN"),
                  onPressed: controller.onRegister,
                ),
                const SizedBox(
                  height: 48,
                ),
                GestureDetector(
                  onTap: controller.onNavigateToLogin,
                  child: Text(
                    "Already have account? Login",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      fontFamily: 'Sofia Pro',
                      fontWeight: FontWeight.w300,
                      color: Get.theme.colorScheme.tertiary,
                      shadows: [
                        Shadow(
                          color: Colors.grey
                              .withAlpha(128), // Choose the color of the shadow
                          blurRadius:
                              8.0, // Adjust the blur radius for the shadow effect
                          offset: const Offset(
                            -2.0,
                            2.0,
                          ), // Set the horizontal and vertical offset for the shadow
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
