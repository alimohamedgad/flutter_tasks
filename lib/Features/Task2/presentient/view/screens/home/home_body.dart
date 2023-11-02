import 'package:flutter/material.dart';
import '../../widgets/dot_widget.dart';
import '../../widgets/hey_with_image.dart';
import '../../widgets/man_presention.dart';
import '../../widgets/services_definition.dart';
import '../tab_bar_screens/tab_bar_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeyWithImage(),
        SizedBox(height: 20),
        ServicesDefinitionText(),
        SizedBox(height: 8),
        ManPresentientBuild(),
        SizedBox(height: 10),
        DotWidget(),
        TabBarListView()
      ],
    );
  }
}
