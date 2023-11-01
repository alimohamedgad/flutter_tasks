import 'package:flutter/material.dart';
import 'package:flutter_task/Features/Task1/data/model/categories_model.dart';
import 'package:flutter_task/core/appColor/app_color.dart';
import 'package:flutter_task/core/styles/styles.dart';

class CategoriesTabBar extends StatefulWidget {
  const CategoriesTabBar({super.key});

  @override
  State<CategoriesTabBar> createState() => _CategoriesTabBarState();
}

class _CategoriesTabBarState extends State<CategoriesTabBar> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}

class CategoryViewSeeAll extends StatelessWidget {
  const CategoryViewSeeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Categories View',
            style: Styles.style14
                .copyWith(fontWeight: FontWeight.w500, color: AppColor.black),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'see all',
              style: Styles.style14.copyWith(
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.underline,
                decorationColor: AppColor.gray.withOpacity(0.6),
                color: AppColor.gray.withOpacity(0.6),
              ),
            ),
          )
        ],
      ),
    );
  }
}
