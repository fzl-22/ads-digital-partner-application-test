import 'package:ads_digital_partner_application_test/config/navigation/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>().obs;
  final usernameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  String? validateUsername(String? username) {
    if (username == null || username.trim().isEmpty) {
      return "Username is required";
    }

    return null;
  }

  String? validatePassword(String? password) {
    if (password == null || password.trim().isEmpty) {
      return "Password is required";
    }

    return null;
  }

  void onLogin() {
    if (!formKey.value.currentState!.validate()) {
      return;
    }

    formKey.value.currentState!.save();

    Get.offAllNamed(Routes.ROOT);
  }

  void onNavigateToRegister() {
    Get.toNamed(Routes.REGISTER);
  }

  @override
  void onClose() {
    usernameController.value.dispose();
    passwordController.value.dispose();
    super.onClose();
  }
}
