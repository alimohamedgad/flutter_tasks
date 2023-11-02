import 'package:flutter/material.dart';
import '../../../../../core/appColor/app_color.dart';
import 'Bottom_screen/assets.dart';
import 'Bottom_screen/profile.dart';
import 'Bottom_screen/support.dart';
import 'home/home_view.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int currentIndex = 0;

  onPageChange(int index) {
    currentIndex = index;
    setState(() {});
  }

  List<Widget> screen = [
    const HomeView(),
    const AssetsScreen(),
    const SupportScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          onPageChange(index);
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.red,
        unselectedItemColor: Colors.grey.withOpacity(0.6),
        useLegacyColorScheme: false,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize_outlined),
            label: "Assets",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent),
            label: "Support",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: currentIndex,
      ),
      body: screen[currentIndex],
    );
  }
}
