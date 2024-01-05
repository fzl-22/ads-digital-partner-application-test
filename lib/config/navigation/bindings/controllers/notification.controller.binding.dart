import 'package:get/get.dart';

import '../../../../features/notification/presentation/controllers/notification.controller.dart';

class NotificationControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(
      () => NotificationController(),
    );
  }
}
