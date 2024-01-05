import 'package:get/get.dart';

import '../../../../features/register/presentation/controllers/register.controller.dart';

class RegisterControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
  }
}
