import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<NavigateToWishlistScreenEvent>(navigateToWishlistScreenEvent);
    on<NavigateToCartScreenEvent>(navigateToCartScreenEvent);
    on<AddToWishlistEvent>(addToWishlistEvent);
    on<AddToCartEvent>(addToCartEvent);
  }

  FutureOr<void> navigateToWishlistScreenEvent(
      NavigateToWishlistScreenEvent event, Emitter<HomeState> emit) {
    print("Navigate to wishlist screen");
  }

  FutureOr<void> navigateToCartScreenEvent(
      NavigateToCartScreenEvent event, Emitter<HomeState> emit) {
        print("Navigate to cart screen");
      }

  FutureOr<void> addToWishlistEvent(
      AddToWishlistEvent event, Emitter<HomeState> emit) {
        print("add to wishlist");
      }

  FutureOr<void> addToCartEvent(
      AddToCartEvent event, Emitter<HomeState> emit) {
        print("add to cart ");
      }
}
