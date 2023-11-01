import 'package:flutter/material.dart';
import 'package:flutter_task/Features/Task1/view/screens/tab_bar_screens/categoryies.dart';
import 'package:flutter_task/Features/Task1/view/screens/tab_bar_screens/orders.dart';
import 'package:flutter_task/Features/Task1/view/screens/tab_bar_screens/services.dart';
import 'package:flutter_task/core/appColor/app_color.dart';
import 'package:flutter_task/core/styles/styles.dart';

import '../../widgets/dot_widget.dart';
import '../../widgets/hey_with_image.dart';
import '../../widgets/man_presention.dart';
import '../../widgets/services_definition.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

int numberOrders = 0;

class _HomeBodyState extends State<HomeBody> {
  List tabBarTitle = [
    'Categories',
    'Services',
    'Orders ($numberOrders)',
  ];
  List<Widget> screens = [
    const CategoriesTabBar(),
    const ServicesTabBar(),
    const OrdersTabBar(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeyWithImage(),
        const SizedBox(height: 20),
        const ServicesDefinitionText(),
        const SizedBox(height: 8),
        const ManPresentientBuild(),
        const SizedBox(height: 10),
        const DotWidget(),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          height: 60,
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
                screens.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 850),
                    curve: Curves.easeInOut,
                    width: 100,
                    height: 35,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: currentIndex == index
                          ? AppColor.red
                          : AppColor.whiteGray,
                      // border: Border.all(),
                    ),
                    child: Center(
                      child: Text(
                        tabBarTitle[index],
                        style: Styles.style14.copyWith(
                          fontWeight: FontWeight.w400,
                          color: currentIndex == index
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
        Expanded(child: screens[currentIndex])
      ],
    );
  }
}
