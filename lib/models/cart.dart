import 'package:demo/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Polar reece",
        price: "540",
        imagePath: "lib/images/nike_logo.png",
        description: "Out of this world"),
    Shoe(
        name: "Polar reece",
        price: "540",
        imagePath: "lib/images/nike_logo.png",
        description: "Out of this world"),
    Shoe(
        name: "Polar reece",
        price: "540",
        imagePath: "lib/images/nike_logo.png",
        description: "Out of this world"),
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
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
