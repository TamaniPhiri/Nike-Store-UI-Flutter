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
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 239, 239, 239),
              borderRadius: BorderRadius.circular(8.0)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Search"), Icon(Icons.search_rounded)],
          ),
        ),
        // message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Text("Brands made by skilled professionals"),
        ),
        // hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Hot picks"), Text("see all")],
          ),
        )
      ],
    );
  }
}
