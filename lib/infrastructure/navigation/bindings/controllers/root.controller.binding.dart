import 'package:get/get.dart';

import '../../../../presentation/root/controllers/root.controller.dart';

class RootControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(
      () => RootController(),
    );
  }
}
