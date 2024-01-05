import 'package:get/get.dart';

import '../../../../features/root/presentation/controllers/root.controller.dart';

class RootControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(
      () => RootController(),
    );
  }
}
