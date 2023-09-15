import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heading
          const Text(
            "My Cart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 29,
            ),
          ),
          const SizedBox(height: 20,),

          Expanded(
            child: ListView.builder(
              
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                // get individual shoe
                Shoe individualShoe = value.getUserCart()[index];

                // return the cart item
                return CartItem(shoe: individualShoe);
              },
            ),
          ),
        ],
      ),
    ),
  );
}
}