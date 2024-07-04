import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit()
      : super(
            0); //passing initial state to the app, which means from which vlaue will the counter start from.

  void increment() {
    emit(state +
        1); //emit updates the state to the provided state. in simpler it increases the value of the counter by one.
  }

  void decrement() {
    if (state == 0) {
      return;
    }
    emit(state -
        1); //emit updates the state to the provided state. in simpler ways it decreases the value of the counter by one.
  }
}
