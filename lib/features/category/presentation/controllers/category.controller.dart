import 'package:get/get.dart';

class CategoryController extends GetxController {
  final title = Get.arguments;

  @override
  void onInit() {
    print(title.title);
    super.onInit();
  }
}
