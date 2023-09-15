// ignore_for_file: prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'package:s_for_shoes/models/shoe.dart';

class Cart extends ChangeNotifier {
// list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom FREAK",
        price: "256" ,
        description:
            "The forward-thinking design of his latest signature shoe.",
        imagePath: "assets/image3.png"),
    Shoe(
        name: "Air Jordans",
        price: "264" ,
        // ignore: unnecessary_string_escapes
        description:
            "You've got the hops and the speed-lace up in shoes that enhance what you bring to the court.",
        imagePath: "assets/image5.png"),

    // ignore: unnecessary_string_escapes
    Shoe(
        name: "KD Treys",
        price: "259" ,
        description:
            "A Secure midfoot strap is suited for scoring binges and defensive",
        imagePath: "assets/image1.png"),

    Shoe(
        name: "Kyrie 4",
        price: "199" ,
        description:
            "The Kyrie 4 shoes are a stylish and high-performance basketball footwear designed for athletes.",
        imagePath: "assets/image2.png")
  ];
// list of items in user cart
  List<Shoe> userCart = [];
// get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

// get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

//add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
