import 'package:bloc_tutorial/features/cart/screen/cart_screen.dart';
import 'package:bloc_tutorial/features/home/bloc/home_bloc.dart';
import 'package:bloc_tutorial/features/home/widget/grocery_tile.dart';
import 'package:bloc_tutorial/features/wishlist/screen/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  void initState() {
    super.initState();
    homeBloc.add(HomeInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current
          is HomeActionState, //we want to listen when there is an event like button clicked.
      buildWhen: (previous, current) => current
          is! HomeActionState, //we want to build when event is completed.
      listener: (context, state) {
        if (state is HomeNavigateToCartScreen) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CartScreen(),
            ),
          );
        } else if (state is HomeNavigateToWishlistScreen) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const WishlistScreen(),
            ),
          );
        } else if (state is ProductAddedtoCart) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Item added to cart"),
            ),
          );
        } else if (state is ProductAddedtoWishlist) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Item added to wishlist"),
            ),
          );
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );

          case HomeLoadedSuccesState:
            final successState = state as HomeLoadedSuccesState;
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.teal,
                title: const Text(
                  "Grocery App",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      homeBloc.add(NavigateToWishlistScreenEvent());
                    },
                    icon: const Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {
                      homeBloc.add(NavigateToCartScreenEvent());
                    },
                    icon: const Icon(Icons.shopping_cart),
                  ),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Expanded(
                  child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 20,
                        );
                      },
                      itemCount: successState.products.length,
                      itemBuilder: (context, index) {
                        return GroceryTile(
                          groceryItem: successState.products[index],
                          homeBloc: homeBloc,
                        );
                      }),
                ),
              ),
            );
          case HomeErrorState:
            return const Scaffold(
              body: Center(
                child: Text(
                  "An error ocucurred",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            );

          default:
            return const SizedBox();
        }
      },
    );
  }
}
