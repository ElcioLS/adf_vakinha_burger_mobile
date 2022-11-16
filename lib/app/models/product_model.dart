import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  int id;
  String name;
  String decription;
  double price;
  String image;

  ProductModel({
    required this.id,
    required this.name,
    required this.decription,
    required this.price,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'decription': decription,
      'price': price,
      'image': image,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      decription: map['decription'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));
}
