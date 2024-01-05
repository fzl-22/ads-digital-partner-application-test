import 'package:get/get.dart';

import '../../../../features/register/presentation/controllers/verification.controller.dart';

class VerificationControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerificationController>(
      () => VerificationController(),
    );
  }
}
