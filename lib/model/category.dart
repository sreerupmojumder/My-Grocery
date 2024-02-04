import 'dart:convert';
import 'package:hive/hive.dart';

part 'category.g.dart';

List<CategoryItem> popularCategoryListFromJson(String val) =>
    List<CategoryItem>.from(json
        .decode(val)['data']
        .map((category) => CategoryItem.popularCategoryFromJson(category)));

List<CategoryItem> categoryListFromJson(String val) =>
    List<CategoryItem>.from(json
        .decode(val)['data']
        .map((category) => CategoryItem.categoryFromJson(category)));

@HiveType(typeId: 2)
class CategoryItem {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String image;

  CategoryItem({required this.id, required this.name, required this.image});

  factory CategoryItem.popularCategoryFromJson(Map<String, dynamic> data) =>
      CategoryItem(
          id: data['id'],
          name: data['attributes']['category']['data']['attributes']['name'],
          image: data['attributes']['category']['data']['attributes']['image']
              ['data']['attributes']['url']);

  factory CategoryItem.categoryFromJson(Map<String, dynamic> data) =>
      CategoryItem(
          id: data['id'],
          name: data['attributes']['name'],
          image: data['attributes']['image']['data']['attributes']['url']);
}
