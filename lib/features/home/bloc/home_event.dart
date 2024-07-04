part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

//this file contains all the even that takes place on a screen like button click event.

class HomeInitialEvent extends HomeEvent{}

class AddToWishlistEvent extends HomeEvent{}

class AddToCartEvent extends HomeEvent{}

class NavigateToWishlistScreenEvent extends HomeEvent{}

class NavigateToCartScreenEvent extends HomeEvent{}
