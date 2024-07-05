part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

//this file contains all the even that takes place on a screen like button click event.

class HomeInitialEvent extends HomeEvent {}

class AddToWishlistEvent extends HomeEvent {
  final GroceryItem products;

  AddToWishlistEvent({required this.products});
}

class AddToCartEvent extends HomeEvent {
  final GroceryItem products;

  AddToCartEvent({required this.products});
}

class NavigateToWishlistScreenEvent extends HomeEvent {}

class NavigateToCartScreenEvent extends HomeEvent {}
