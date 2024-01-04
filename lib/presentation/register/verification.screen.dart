import 'package:ads_digital_partner_application_test/presentation/register/controllers/verification.controller.dart';
import 'package:ads_digital_partner_application_test/presentation/register/widgets/number_field.dart';
import 'package:ads_digital_partner_application_test/presentation/shared/widgets/action_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class VerificationScreen extends GetView<VerificationController> {
  const VerificationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () {
          if (controller.isSuccess.value) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Lottie.asset("assets/animations/success.json"),
                        Text(
                          "Phone Number Verified",
                          style: Get.theme.textTheme.titleLarge,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "Congradulations, your phone number has been verified. You can start using the app",
                          style: Get.theme.textTheme.bodyLarge!.copyWith(
                            color: Get.theme.colorScheme.tertiary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  ActionButton(
                    label: const Text("CONTINUE"),
                    onPressed: controller.onContinue,
                  ),
                ],
              ),
            );
          }

          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Enter the verify code",
                    style: Get.theme.textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "We just send you a verification code via phone",
                    style: Get.theme.textTheme.bodyMedium!.copyWith(
                      color: Get.theme.colorScheme.tertiary,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NumberField(
                        onChanged: (value) =>
                            controller.updateNumberFieldValue(0, value),
                      ),
                      NumberField(
                        onChanged: (value) =>
                            controller.updateNumberFieldValue(1, value),
                      ),
                      NumberField(
                        onChanged: (value) =>
                            controller.updateNumberFieldValue(2, value),
                      ),
                      NumberField(
                        onChanged: (value) =>
                            controller.updateNumberFieldValue(3, value),
                      ),
                      NumberField(
                        onChanged: (value) =>
                            controller.updateNumberFieldValue(4, value),
                      ),
                      NumberField(
                        onChanged: (value) =>
                            controller.updateNumberFieldValue(5, value),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ActionButton(
                    label: const Text("SUBMIT CODE"),
                    onPressed: controller.onSubmitCode,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "The verify code will expire in ${controller.time.value}",
                    style: Get.theme.textTheme.bodyMedium!.copyWith(
                      color: Get.theme.colorScheme.tertiary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  GestureDetector(
                    onTap: controller.onResendCode,
                    child: Text(
                      "Resend Code",
                      style: Get.theme.textTheme.bodyMedium!.copyWith(
                        color: Get.theme.colorScheme.primary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
