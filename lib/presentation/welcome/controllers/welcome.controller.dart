// ignore_for_file: unnecessary_overrides

import 'package:ads_digital_partner_application_test/infrastructure/navigation/routes.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  void onNavigateToLogin() {
    Get.toNamed(Routes.LOGIN);
  }

  void onNavigateToRegister() {
    Get.toNamed(Routes.REGISTER);
  }
}
