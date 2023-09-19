import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          decoration: const BoxDecoration(color: Colors.black87),
          child: const Text("Search"),
        ),
        // message

        // hot picks
      ],
    );
  }
}
