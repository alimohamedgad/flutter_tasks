import 'package:flutter/material.dart';

import '../../../data/model/categories_model.dart';

class CategoryListTile extends StatelessWidget {
  final CategoriesModel categoriesModel;
  const CategoryListTile({
    Key? key,
    required this.categoriesModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: ListTile(
        onTap: () {},
        title: Text(
          categoriesModel.name,
        ),
        leading: Image.asset(categoriesModel.image),
        trailing: const Icon(Icons.arrow_right_alt_sharp),
      ),
    );
  }
}
