import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;
  const ShoeTile({super.key, required this.shoe, required this.onTap});

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
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(shoe.imagePath)),
        ),
        // description
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            shoe.description,
            style: const TextStyle(color: Color.fromARGB(255, 93, 93, 93)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // shoe name
                  Text(shoe.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),

                  // price
                  Text(
                    "K${shoe.price}",
                    style:
                        const TextStyle(color: Color.fromARGB(221, 53, 53, 53)),
                  )
                ],
              ),

              // plus button
              GestureDetector(
                onTap: () => onTap,
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    padding: const EdgeInsets.all(20),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        )
      ]),
    );
  }
}
