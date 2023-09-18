import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          color: const Color.fromARGB(255, 166, 166, 166),
          activeColor: Colors.black87,
          tabActiveBorder:
              Border.all(color: const Color.fromARGB(221, 200, 200, 200)),
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
