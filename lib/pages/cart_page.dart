import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeshop/models/cart.dart';
import 'package:shoeshop/models/shoe.dart';
import 'package:shoeshop/widgets/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Cart",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: value.getCart().length,
                  itemBuilder: (context, index) {
                    // get individual item from cart

                    Shoe shoe = value.getCart()[index];

                    return CartItem(shoe: shoe);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
