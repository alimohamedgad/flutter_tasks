// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view/screens/tab_bar_screens/categoryies.dart';
import '../view/screens/tab_bar_screens/orders.dart';
import '../view/screens/tab_bar_screens/services.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  // TabBarTitle
  List tabBarTitle = [
    'Categories',
    'Services',
    'Orders (0)',
  ];
  // Tab Bar Screen
  List<Widget> screens = [
    const CategoriesTabBar(),
    const ServicesTabBar(),
    const OrdersTabBar(),
  ];

  int currentIndex = 0;
  // Change TabBar Index
  changeTabBarIndex(int index) {
    currentIndex = index;
    emit(ChangeCurrentIndex());
  }
}
