import 'package:ads_digital_partner_application_test/features/category/presentation/controllers/category.controller.dart';
import 'package:get/get.dart';

class CategoryControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryController>(
      () => CategoryController(),
    );
  }
}
