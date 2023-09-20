import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // shoe pic
        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(shoe.imagePath)),
        // description
        Text(
          shoe.description,
          style: const TextStyle(color: Color.fromARGB(255, 93, 93, 93)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // shoe name
                  Text(shoe.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),

                  // price
                  Text(shoe.price)
                ],
              ),
            ),

            // plus button
            Container(
                decoration: const BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
                padding: const EdgeInsets.all(20),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ))
          ],
        )
      ]),
    );
  }
}
