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
            Column(
              children: [
                // shoe name
                Text(shoe.name),

                // price
                Text(shoe.price)
              ],
            ),

            // plus button
            Container(
                decoration: BoxDecoration(color: Colors.black87),
                padding: EdgeInsets.all(20),
                child: Icon(Icons.add))
          ],
        )
      ]),
    );
  }
}
