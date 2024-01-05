import 'package:ads_digital_partner_application_test/features/home/data/models/category_model.dart';
import 'package:ads_digital_partner_application_test/features/home/data/models/product_model.dart';
import 'package:ads_digital_partner_application_test/features/home/domain/usecases/category_usecase.dart';
import 'package:ads_digital_partner_application_test/features/home/domain/usecases/product_usecase.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<CategoryModel> categories = CategoryUsecase.getCategories();
  final List<ProductModel> products = ProductUsecase.getProducts();

  @override
  void onInit() {
    getCategories();
    getProducts();
    super.onInit();
  }

  void getCategories() {
    categories.assignAll(CategoryUsecase.getCategories());
  }

  void getProducts() {
    products.assignAll(ProductUsecase.getProducts());
  }
}
