import 'package:get/get.dart';

import '../../../../presentation/walkthrough/controllers/walkthrough.controller.dart';

class OnboardingControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WalkthroughController>(
      () => WalkthroughController(),
    );
  }
}
