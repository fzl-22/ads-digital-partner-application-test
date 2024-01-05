import 'package:ads_digital_partner_application_test/features/profile/presentation/controllers/profile.controller.dart';
import 'package:get/get.dart';

class ProfileControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
