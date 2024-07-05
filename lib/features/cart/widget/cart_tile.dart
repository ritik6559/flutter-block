import 'package:bloc_tutorial/features/cart/bloc/cart_bloc.dart';
import 'package:bloc_tutorial/features/home/model/grocery_item.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  final GroceryItem groceryItem;
  final CartBloc cartBloc;
  const CartTile(
      {super.key, required this.groceryItem, required this.cartBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            groceryItem.name,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 25,
            ),
          ),
          Text(groceryItem.description),
          Image.network(
            groceryItem.imageUrl,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$ ${groceryItem.price}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 25),
                ),
                Row(
                  children: [
                    
                    IconButton(
                      onPressed: () {
                        cartBloc.add(RemovefromCartEvent());
                      },
                      icon: const Icon(Icons.shopping_cart),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
