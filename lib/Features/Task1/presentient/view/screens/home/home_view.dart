import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/core/appColor/app_color.dart';
import 'package:flutter_task/core/styles/styles.dart';
import '../../../cubit/home_cubit.dart';
import 'home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        backgroundColor: AppColor.scaffold,
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          centerTitle: true,
          title: Text(
            'Home',
            style: Styles.style20,
          ),
        ),
        body: const HomeBody(),
      ),
    );
  }
}
