import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/data/cart_item.dart';
import 'package:bloc_tutorial/features/home/model/grocery_item.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<RemovefromCartEvent>(removefromCartEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccesState(products: CartItem.cart));
  }

  FutureOr<void> removefromCartEvent(
      RemovefromCartEvent event, Emitter<CartState> emit) {
        
      }
}
