import 'package:get/get.dart';

import '../../../../features/welcome/presentation/controllers/welcome.controller.dart';

class WelcomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(
      () => WelcomeController(),
    );
  }
}
