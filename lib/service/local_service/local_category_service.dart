import 'package:hive/hive.dart';
import 'package:my_grocery/model/category.dart';

class LocalCategoryService{
  late Box<CategoryItem> _popularCategoryBox;
  late Box<CategoryItem> _categoryBox;

  Future<void> init() async{
    _popularCategoryBox = await Hive.openBox<CategoryItem>('PopularCategories');
    _categoryBox = await Hive.openBox<CategoryItem>('Categories');
  }
  Future<void> assignAllPopularCategory({ required List<CategoryItem> popularCategories}) async {
    await _popularCategoryBox.clear();
    await _popularCategoryBox.addAll(popularCategories);
  }

  Future<void> assignAllCategory({ required List<CategoryItem> categories}) async {
    await _categoryBox.clear();
    await _categoryBox.addAll(categories);
  }


  List<CategoryItem> getPopularCategories() => _popularCategoryBox.values.toList();
  List<CategoryItem> getCategories() => _categoryBox.values.toList();
}