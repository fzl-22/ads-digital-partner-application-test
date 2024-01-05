import 'package:ads_digital_partner_application_test/features/home/domain/entity/product_entity.dart';

class ProductModel extends ProductEntity{
  ProductModel({
    required super.title,
    required super.subtitle,
    required super.image,
    required super.detail,
    required super.price,
    required super.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['title'],
      subtitle: json['subtitle'],
      image: json['image'],
      detail: json['detail'],
      price: json['price'],
      rating: json['rating'].toDouble(), 
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'image': image,
      'detail': detail,
      'price': price,
      'rating': rating,
    };
  }
}