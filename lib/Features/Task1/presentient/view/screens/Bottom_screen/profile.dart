import 'package:flutter/material.dart';
import 'package:flutter_task/core/styles/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: Styles.style20,
        ),
      ),
    );
  }
}
