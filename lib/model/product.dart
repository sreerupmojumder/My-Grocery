import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:my_grocery/model/tag.dart';

part 'product.g.dart';

List<Product> popularProductListFromJson(String val) => List<Product>.from(json
    .decode(val)['data']
    .map((val) => Product.popularProductFromJson(val)));

List<Product> productListFromJson(String val) => List<Product>.from(json
    .decode(val)['data']
    .map((val) => Product.productFromJson(val)));

@HiveType(typeId: 3)
class Product {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String images;
  @HiveField(4)
  final List<Tag> tags;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.images,
    required this.tags,
  });

  factory Product.popularProductFromJson(Map<String, dynamic> data) => Product(
      id: data['id'],
      name: data['attributes']['product']['data']['attributes']['name'],
      description: data['attributes']['product']['data']['attributes']
          ['description'],
      images: data['attributes']['product']['data']['attributes']['image']
          ['data']['attributes']['url'],
      tags: []
  );

  factory Product.productFromJson(Map<String, dynamic> data) => Product(
      id: data['id'],
      name: data['attributes']['name'],
      description: data['attributes']['description'],
      images: data['attributes']['image']['data']['attributes']['url'],
      tags: List<Tag>.from(data['attributes']['tags']['data'].map((val) => Tag.fromJson(val)))
  );
}
