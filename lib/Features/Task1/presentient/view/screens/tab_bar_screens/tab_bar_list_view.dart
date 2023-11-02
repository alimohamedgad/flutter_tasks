import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/appColor/app_color.dart';
import '../../../../../../core/styles/styles.dart';
import '../../../cubit/home_cubit.dart';

class TabBarListView extends StatelessWidget {
  const TabBarListView({super.key});

  // @override
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final homeCubit = context.read<HomeCubit>();
        return Expanded(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: AppColor.whiteGray,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      homeCubit.screens.length,
                      (index) => GestureDetector(
                        onTap: () {
                          homeCubit.changeTabBarIndex(index);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 850),
                          curve: Curves.easeInOut,
                          width: 90.w,
                          height: 28.h,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: homeCubit.currentIndex == index
                                ? AppColor.red
                                : AppColor.whiteGray,
                            // border: Border.all(),
                          ),
                          child: Center(
                            child: Text(
                              homeCubit.tabBarTitle[index],
                              style: Styles.style14.copyWith(
                                fontWeight: FontWeight.w400,
                                color: homeCubit.currentIndex == index
                                    ? AppColor.scaffold
                                    : AppColor.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // Show TabBar Screen based on index
              Expanded(child: homeCubit.screens[homeCubit.currentIndex]),
            ],
          ),
        );
      },
    );
  }
}
