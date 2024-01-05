import 'package:ads_digital_partner_application_test/infrastructure/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final formKey = GlobalKey<FormState>().obs;
  final nameController = TextEditingController().obs;
  final mobilePhoneController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final isVisible = false.obs;

  String? validateName(String? username) {
    if (username == null || username.trim().isEmpty) {
      return "Username is required";
    }

    return null;
  }

  String? validateMobilePhone(String? mobilePhone) {
    if (mobilePhone == null || mobilePhone.isEmpty) {
      return "Mobile phone is required";
    }

    mobilePhone = mobilePhone.trim();

    if (mobilePhone.length < 4 || mobilePhone.length >= 15) {
      return "Mobile phone between 4 and 13 characters";
    }

    if (num.tryParse(mobilePhone) == null) {
      return "Mobile phone must be a number";
    }

    return null;
  }

  String? validateEmail(String? email) {
    if (email == null || email.trim().isEmpty) {
      return "Email is required";
    }

    email = email.trim();

    if (!email.isEmail) {
      return "Email must be valid";
    }

    return null;
  }

  String? validatePassword(String? password) {
    if (password == null || password.trim().isEmpty) {
      return "Password is required";
    }

    password = password.trim();

    if (password.length < 8 || password.length > 32) {
      return "Password must be between 8 and 32 characters";
    }

    if (password.isAlphabetOnly || password.isNumericOnly) {
      return "Password must be alphanumeric only";
    }

    return null;
  }

  void toggleVisibility() {
    isVisible.value = !isVisible.value;
  }

  void onRegister() {
    if (!formKey.value.currentState!.validate()) {
      return;
    }

    formKey.value.currentState!.save();

    Get.toNamed(Routes.VERIFICATION);
  }

  void onNavigateToLogin() {
    Get.toNamed(Routes.LOGIN);
  }
}
