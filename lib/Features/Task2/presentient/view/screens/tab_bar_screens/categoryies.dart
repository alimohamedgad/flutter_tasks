// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/home_cubit.dart';
import '../../widgets/category_widget/category_list_tile.dart';
import '../../widgets/category_widget/category_view_see_all.dart';

class CategoriesTabBar extends StatefulWidget {
  const CategoriesTabBar({super.key});

  @override
  State<CategoriesTabBar> createState() => _CategoriesTabBarState();
}

class _CategoriesTabBarState extends State<CategoriesTabBar> {
  @override
  void initState() {
    context.read<HomeCubit>().getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final userCubit = context.read<HomeCubit>();
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CategoryViewSeeAll(),
              if (state is GetUsersSuccess)
                ...List.generate(
                  userCubit.users.length,
                  (index) {
                    return CategoryListTile(userModel: userCubit.users[index]);
                  },
                )
              else
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
