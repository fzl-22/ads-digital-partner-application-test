import 'package:get/get.dart';

import '../../../../features/add/presentation/controllers/add.controller.dart';

class AddControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddController>(
      () => AddController(),
    );
  }
}
