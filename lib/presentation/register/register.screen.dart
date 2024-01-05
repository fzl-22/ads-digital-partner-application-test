import 'package:ads_digital_partner_application_test/presentation/shared/widgets/auth_link_button.dart';
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
                  "Create your account",
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
                Obx(
                  () => TextInputField.password(
                    controller: controller.passwordController.value,
                    label: const Text("Password"),
                    keyboardType: TextInputType.visiblePassword,
                    validator: controller.validatePassword,
                    suffixIcon: Icon(
                      controller.isVisible.value
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: Get.theme.colorScheme.tertiary,
                    ),
                    isVisible: controller.isVisible.value,
                    onSuffixPressed: controller.toggleVisibility,
                  ),
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
                AuthLinkButton(
                  onTap: controller.onNavigateToLogin,
                  text: "Already have account? Login",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
