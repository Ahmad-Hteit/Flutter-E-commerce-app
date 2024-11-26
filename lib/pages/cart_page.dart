import 'package:ecommerce/components/cart_items.dart';
import 'package:ecommerce/models/card.dart';
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //heading
                  Text(
                    "My Cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(height: 25),
                  //list of cart items
                  Expanded(
                      child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      //get individual shoe
                      Shoe individualShoe = value.getUserCart()[index];

                      //return cart item
                      return CartItem(
                        shoe: individualShoe,
                      );
                    },
                  ))
                ],
              ),
            ));
  }
}
