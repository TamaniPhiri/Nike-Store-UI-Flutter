import 'package:demo/models/shoe.dart';

class Cart {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Polar reece",
        price: "540",
        imagePath: "lib/images/nike_logo.png",
        description: "Out of this world"),
    // i can add more kicks her the same way
  ];
  // list of items in user's cart
  List<Shoe> userCart = [];
  // get list of items for sale
  // get cart
  // add items to cart
  // remove item from cart
}
