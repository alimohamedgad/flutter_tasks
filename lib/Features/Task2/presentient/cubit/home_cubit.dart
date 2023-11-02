// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/Features/Task2/data/model/users_model.dart';
import 'package:flutter_task/Features/Task2/data/repo/users_repository.dart';
import 'package:flutter_task/Features/Task2/presentient/view/screens/tab_bar_screens/users.dart';

import '../view/screens/tab_bar_screens/orders.dart';
import '../view/screens/tab_bar_screens/services.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  UserRepository userRepository;
  HomeCubit(this.userRepository) : super(HomeInitial());

  List<UserModel> users = [];
  // Get Users from Api
  getUsers() async {
    userRepository.getUsers().then((usersList) {
      users = usersList;
      emit(GetUsersSuccess());
    }).catchError((e) {
      log(e.toString());
    });
  }

  // TabBarTitle
  List tabBarTitle = [
    'Users',
    'Services',
    'Orders (0)',
  ];
  // Tab Bar Screen
  List<Widget> screens = [
    const UsersTabBar(),
    const ServicesTabBar(),
    const OrdersTabBar(),
  ];

  int currentIndex = 0;

  changeTabBarIndex(int index) {
    currentIndex = index;
    emit(ChangeCurrentIndex());
  }
}
