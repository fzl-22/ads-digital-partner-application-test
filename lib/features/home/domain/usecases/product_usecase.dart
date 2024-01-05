import 'package:ads_digital_partner_application_test/features/home/data/data_sources/product_service.dart';
import 'package:ads_digital_partner_application_test/features/home/data/models/product_model.dart';

class ProductUsecase{
  static List<ProductModel> getProducts() {
    return ProductService.getDummyProducts();
  }
}
