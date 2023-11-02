import 'package:flutter/material.dart';
import 'package:flutter_task/core/appColor/app_color.dart';
import 'package:flutter_task/core/app_Image/app_image.dart';
import 'package:flutter_task/core/app_string/app_string.dart';
import 'package:flutter_task/core/styles/styles.dart';

class OrdersTabBar extends StatelessWidget {
  const OrdersTabBar({super.key});

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
            AppString.noOrderFound,
            style: Styles.style22,
            textAlign: TextAlign.center,
          ),
          Text(
            AppString.askWhatAddOrder,
            textAlign: TextAlign.center,
            style: Styles.style20.copyWith(color: AppColor.gray),
          ),
        ],
      ),
    );
  }
}
