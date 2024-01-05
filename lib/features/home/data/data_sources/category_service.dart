import 'package:ads_digital_partner_application_test/features/home/data/data_sources/dummy_categories.dart';
import 'package:ads_digital_partner_application_test/features/home/data/models/category_model.dart';

class CategoryService {
  static List<CategoryModel> getDummyCategories() {
    return dummyCategories
        .map((category) => CategoryModel.fromJson(category))
        .toList();
  }
}
