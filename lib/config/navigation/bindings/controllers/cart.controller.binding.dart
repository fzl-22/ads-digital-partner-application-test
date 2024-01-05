import 'package:get/get.dart';

import '../../../../features/cart/presentation/controllers/cart.controller.dart';

class CartControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(
      () => CartController(),
    );
  }
}
