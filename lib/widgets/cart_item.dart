import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeshop/models/cart.dart';
import 'package:shoeshop/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).removeFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        trailing: Icon(Icons.delete, color: Colors.red),
        onTap: () {
          removeItemFromCart(widget.shoe);
        },
        title: Text(
          widget.shoe.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(widget.shoe.price, style: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
