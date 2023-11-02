import 'package:flutter/material.dart';

import '../../../../../../core/appColor/app_color.dart';
import '../../../../../../core/styles/styles.dart';

class UsersViewSeeAll extends StatelessWidget {
  const UsersViewSeeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Users View',
            style: Styles.style14
                .copyWith(fontWeight: FontWeight.w500, color: AppColor.black),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'see all',
              style: Styles.style14.copyWith(
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.underline,
                decorationColor: AppColor.gray.withOpacity(0.6),
                color: AppColor.gray.withOpacity(0.6),
              ),
            ),
          )
        ],
      ),
    );
  }
}
