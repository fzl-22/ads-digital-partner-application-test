import 'package:ads_digital_partner_application_test/features/home/data/data_sources/category_service.dart';
import 'package:ads_digital_partner_application_test/features/home/data/models/category_model.dart';

class CategoryUsecase {
  static List<CategoryModel> getCategories() {
    return CategoryService.getDummyCategories();
  }
}
