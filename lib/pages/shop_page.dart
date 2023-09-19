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
          padding: const EdgeInsets.all(25.0),
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 148, 148, 148)),
          child: const Text("Search"),
        ),
        // message

        // hot picks
      ],
    );
  }
}
