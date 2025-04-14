import 'package:flutter/material.dart';
import 'package:shoeshop/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeshop = [
    Shoe(
      name: "Zoom SD 4",
      price: "120.0",
      imagePath: "lib/images/zoomFreak.png",
      description:
          "A high-performance basketball shoe designed for speed and agility.",
    ),

    Shoe(
      name: "Air Max 270",
      price: "150.0",
      imagePath: "lib/images/1.webp",
      description:
          "Stylish and comfortable with maximum air cushioning for all-day wear.",
    ),

    Shoe(
      name: "Nike Blazer Mid",
      price: "100.0",
      imagePath: "lib/images/2.webp",
      description:
          "A retro-inspired design with a durable leather upper and vintage vibe.",
    ),

    Shoe(
      name: "React Infinity Run",
      price: "160.0",
      imagePath: "lib/images/reactInfinity.png",
      description:
          "Built for distance running with responsive cushioning and support.",
    ),
  ];

  // list of itms in cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoes() {
    return shoeshop;
  }

  // get cart
  List<Shoe> getCart() {
    return userCart;
  }

  // add items to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
