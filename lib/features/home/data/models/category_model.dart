import 'package:ads_digital_partner_application_test/features/home/domain/entity/category_entity.dart';

class CategoryModel extends CategoryEntity {
  const CategoryModel({
    required super.title,
    required super.icon,
    required super.background,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        title: json['title'],
        icon: json['icon'],
        background: json['background']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'icon': icon,
      'background': background,
    };
  }
}
