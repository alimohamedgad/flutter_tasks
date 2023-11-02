import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/appColor/app_color.dart';
import '../../../../../core/app_Image/app_image.dart';
import '../../../../../core/styles/styles.dart';
import 'custom_button.dart';

class ManPresentientBuild extends StatelessWidget {
  const ManPresentientBuild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColor.lightRed,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 138.h,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Multi-Services for Your\nReal Estate Needs',
                style: Styles.style16,
              ),
              CustomButton(
                hight: 32.h,
                text: 'Order',
                width: 128.w,
                onTab: () {},
              )
            ],
          ),
          Image.asset(
            AppImage.manPresentient,
            height: 144.h,
            width: 144.w,
          )
        ],
      ),
    );
  }
}
