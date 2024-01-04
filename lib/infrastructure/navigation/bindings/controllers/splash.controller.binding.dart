import 'package:get/get.dart';

import '../../../../presentation/splash/controllers/splash.controller.dart';

class SplashControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
  }
}
