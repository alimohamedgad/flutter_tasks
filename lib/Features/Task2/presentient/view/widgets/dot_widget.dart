import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          3,
          (index) => Container(
            height: 10.h,
            width: index == 1 ? 45.w : 20.w,
            decoration: BoxDecoration(
                shape: index != 1 ? BoxShape.circle : BoxShape.rectangle,
                color: index == 1 ? Colors.red : Colors.grey,
                borderRadius: index == 1 ? BorderRadius.circular(12) : null),
          ),
        ),
      ],
    );
  }
}
