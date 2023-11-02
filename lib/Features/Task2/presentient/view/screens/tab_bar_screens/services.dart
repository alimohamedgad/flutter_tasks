import 'package:flutter/material.dart';

import '../../../../../../core/appColor/app_color.dart';
import '../../../../../../core/app_Image/app_image.dart';
import '../../../../../../core/styles/styles.dart';

class ServicesTabBar extends StatelessWidget {
  const ServicesTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: ListView(
        children: [
          Image.asset(
            AppImage.emptyState,
            width: 250,
            height: 180,
          ),
          Text(
            'No Services found',
            style: Styles.style22,
            textAlign: TextAlign.center,
          ),
          Text(
            'you can place your needed Services \nto let serve you.',
            textAlign: TextAlign.center,
            style: Styles.style20.copyWith(color: AppColor.gray),
          ),
        ],
      ),
    );
  }
}
