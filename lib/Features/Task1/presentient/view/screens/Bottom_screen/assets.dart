import 'package:flutter/material.dart';
import 'package:flutter_task/core/styles/styles.dart';

class AssetsScreen extends StatelessWidget {
  const AssetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Assets',
          style: Styles.style20,
        ),
      ),
    );
  }
}
