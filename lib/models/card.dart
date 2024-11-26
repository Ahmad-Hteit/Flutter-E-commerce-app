import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Zoom Freak",
      price: "236",
      description: "The forward-thinking design of his latest signature",
      imagePath: "lib/images/blackShoe.png",
    ),
    Shoe(
      name: "Air Jordans",
      price: "220",
      description: "You've got the hopes and great feelings warning it ",
      imagePath: "lib/images/red.jpg",
    ),
    Shoe(
      name: "KD Treys",
      price: "240",
      description: "A secure midfoot strap is suited for your needs!",
      imagePath: "lib/images/kd.png",
    ),
    Shoe(
      name: "Kyrie 6",
      price: "199",
      description: "Bouncy good feeling pair of shoes",
      imagePath: "lib/images/blueShoe.png",
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //removing items
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
