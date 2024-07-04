part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

//this file builds our state or UI.
abstract class HomeActionState extends HomeState{}

final class HomeInitial extends HomeState {}


class HomeLoadingState extends HomeState{}

class HomeLoadedSuccesState extends HomeState{}

class HomeErrorState extends HomeState{}

class HomeNavigateToWishlistScreen extends HomeActionState{}

class HomeNavigateToCartScreen extends HomeActionState{}


