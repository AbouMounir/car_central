import 'package:car_rental/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: MyColorName.white,
        elevation: 0,
        selectedItemColor: MyColorName.black,
        unselectedItemColor: MyColorName.darkgray,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_rounded), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_rounded), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ]);
  }
}
