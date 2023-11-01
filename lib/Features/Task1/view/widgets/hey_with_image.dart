import 'package:flutter/material.dart';

import '../../../../core/app_Image/app_image.dart';
import '../../../../core/styles/styles.dart';

class HeyWithImage extends StatelessWidget {
  const HeyWithImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 12),
      child: Row(
        children: [
          Image.asset(
            AppImage.person,
            width: 32,
            height: 32,
          ),
          Text(
            'Hey, Ahmed',
            style: Styles.style16,
          ),
          Image.asset(
            AppImage.emoji,
            width: 32,
            height: 32,
          ),
        ],
      ),
    );
  }
}
