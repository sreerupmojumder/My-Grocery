import 'package:flutter/material.dart';
import 'package:my_grocery/view/home/components/popular_category/popular_category_card.dart';

import '../../../../model/category.dart';

class PopularCategory extends StatelessWidget {
  final List<CategoryItem> category;

  const PopularCategory({super.key,
    required this.category
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.only(right: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: category.length,
          itemBuilder: (context, index) =>
           PopularCategoryCard(
               category: category[index]
          )
      ),
    );
  }
}
