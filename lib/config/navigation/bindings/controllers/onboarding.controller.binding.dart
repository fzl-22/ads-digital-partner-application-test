import 'package:ads_digital_partner_application_test/features/walkthrough/presentation/controllers/walkthrough.controller.dart';
import 'package:get/get.dart';

class OnboardingControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WalkthroughController>(
      () => WalkthroughController(),
    );
  }
}
