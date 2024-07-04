import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/data/data.dart';
import 'package:bloc_tutorial/features/home/model/grocery_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

//this file implements the event defined in home_event.dart
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<NavigateToWishlistScreenEvent>(navigateToWishlistScreenEvent);
    on<NavigateToCartScreenEvent>(navigateToCartScreenEvent);
    on<AddToWishlistEvent>(addToWishlistEvent);
    on<AddToCartEvent>(addToCartEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    //if we have our database then it will take some time to load data thus we will a progress indicator.
    emit(HomeLoadingState());
    await Future.delayed(const Duration(seconds: 3));
    emit(HomeLoadedSuccesState(
        products: dummyGroceryItems));
  }

  FutureOr<void> navigateToWishlistScreenEvent(
      NavigateToWishlistScreenEvent event, Emitter<HomeState> emit) {
    emit(HomeNavigateToWishlistScreen());
  }

  FutureOr<void> navigateToCartScreenEvent(
      NavigateToCartScreenEvent event, Emitter<HomeState> emit) {
    emit(HomeNavigateToCartScreen());
  }

  FutureOr<void> addToWishlistEvent(
      AddToWishlistEvent event, Emitter<HomeState> emit) {
    print("add to wishlist");
  }

  FutureOr<void> addToCartEvent(AddToCartEvent event, Emitter<HomeState> emit) {
    print("add to cart ");
  }
}
