import 'package:flutter/material.dart';
import 'package:flutter_task/core/appColor/app_color.dart';
import 'package:flutter_task/core/styles/styles.dart';

import 'home_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
