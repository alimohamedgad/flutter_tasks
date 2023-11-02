import 'package:flutter/material.dart';
import 'package:flutter_task/core/styles/styles.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Support',
          style: Styles.style20,
        ),
      ),
    );
  }
}
