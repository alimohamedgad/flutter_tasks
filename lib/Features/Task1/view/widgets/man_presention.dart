import 'package:flutter/material.dart';

import '../../../../core/appColor/app_color.dart';
import '../../../../core/app_Image/app_image.dart';
import '../../../../core/styles/styles.dart';

class ManPresentientBuild extends StatelessWidget {
  const ManPresentientBuild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: AppColor.lightRed,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      // width: 335,
      height: 152,
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
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.red,
                  minimumSize: const Size(128, 32),
                ),
                child: Text(
                  'Order',
                  style: Styles.style14.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            AppImage.manPresentient,
            height: 144,
            width: 144,
          )
        ],
      ),
    );
  }
}
