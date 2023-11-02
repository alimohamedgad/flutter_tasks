// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../../../data/model/categories_model.dart';
import '../../widgets/category_widget/category_view_see_all.dart';

class CategoriesTabBar extends StatelessWidget {
  const CategoriesTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CategoryViewSeeAll(),
          ...List.generate(
            categoriesList.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: ListTile(
                onTap: () {},
                title: Text(
                  categoriesList[index].name,
                ),
                leading: Image.asset(categoriesList[index].image),
                trailing: const Icon(Icons.arrow_right_alt_sharp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
