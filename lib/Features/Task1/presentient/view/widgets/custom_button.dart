// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/appColor/app_color.dart';
import '../../../../../core/styles/styles.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTab;
  final String text;
  final double width;
  final double hight;

  const CustomButton({
    Key? key,
    this.onTab,
    required this.text,
    required this.width,
    required this.hight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTab,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.red,
        minimumSize: Size(width, hight),
      ),
      child: Text(
        text,
        style: Styles.style14.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
