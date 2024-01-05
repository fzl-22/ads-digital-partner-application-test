import 'package:get/get.dart';

import '../../../../presentation/add/controllers/add.controller.dart';

class AddControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddController>(
      () => AddController(),
    );
  }
}
