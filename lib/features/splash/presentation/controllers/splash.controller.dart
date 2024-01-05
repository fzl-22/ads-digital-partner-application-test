// ignore_for_file: unnecessary_overrides

import 'dart:async';

import 'package:ads_digital_partner_application_test/config/navigation/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _exitSplashScreen(direction: Routes.WALKTHROUGH);
  }

  Future<void> _exitSplashScreen({
    required String direction,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAllNamed(direction, );
  }
}
