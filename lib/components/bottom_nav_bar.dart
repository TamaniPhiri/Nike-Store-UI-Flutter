import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          color: const Color.fromARGB(255, 148, 148, 148),
          activeColor: Colors.black87,
          tabActiveBorder:
              Border.all(color: const Color.fromARGB(221, 220, 220, 220)),
          tabBackgroundColor: const Color.fromARGB(221, 255, 255, 255),
          mainAxisAlignment: MainAxisAlignment.center,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: "Cart",
            ),
          ]),
    );
  }
}
