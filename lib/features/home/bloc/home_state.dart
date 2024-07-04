part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

//this file builds our state or UI.
abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedSuccesState extends HomeState {
  //when page is loaded we will show grocery items.
  final List<GroceryItem> products;

  HomeLoadedSuccesState({
    required this.products,
  });
}

class HomeErrorState extends HomeState {}

class HomeNavigateToWishlistScreen extends HomeActionState {}

class HomeNavigateToCartScreen extends HomeActionState {}
