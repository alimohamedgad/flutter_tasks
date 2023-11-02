// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/home_cubit.dart';
import '../../widgets/users_widget/users_list_tile.dart';
import '../../widgets/users_widget/users_view_see_all.dart';

class UsersTabBar extends StatefulWidget {
  const UsersTabBar({super.key});

  @override
  State<UsersTabBar> createState() => _UsersTabBarState();
}

class _UsersTabBarState extends State<UsersTabBar> {
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
              const UsersViewSeeAll(),
              if (state is GetUsersSuccess)
                ...List.generate(
                  userCubit.users.length,
                  (index) {
                    return UsersListTile(userModel: userCubit.users[index]);
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
