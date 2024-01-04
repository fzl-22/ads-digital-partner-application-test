import 'package:get/get.dart';

import '../../../../presentation/register/controllers/verification.controller.dart';

class VerificationControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerificationController>(
      () => VerificationController(),
    );
  }
}
