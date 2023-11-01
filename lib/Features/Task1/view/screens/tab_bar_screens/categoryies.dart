// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_task/Features/Task1/data/model/categories_model.dart';

import '../../widgets/category_widget/category_list_tile.dart';
import '../../widgets/category_widget/category_view_see_all.dart';

class CategoriesTabBar extends StatelessWidget {
  const CategoriesTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CategoryViewSeeAll(),
        ...List.generate(
          categoriesList.length,
          (index) => CategoryListTile(categoriesModel: categoriesList[index]),
        ),
      ],
    );
  }
}
