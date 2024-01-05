import 'package:ads_digital_partner_application_test/features/home/data/data_sources/dummy_products.dart';
import 'package:ads_digital_partner_application_test/features/home/data/models/product_model.dart';

class ProductService {
  static List<ProductModel> getDummyProducts() {
    return dummyProducts
        .map((category) => ProductModel.fromJson(category))
        .toList();
  }
}
