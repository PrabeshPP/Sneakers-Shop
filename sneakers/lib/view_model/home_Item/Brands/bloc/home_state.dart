part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class ItemLoadedState extends HomeState {
  final List<BrandsIcon> listIcons;
  final List<Item> listItems;
  const ItemLoadedState({required this.listItems, required this.listIcons});

  @override
  List<Object> get props => [listIcons, listItems];
}

class ErrorLoading extends HomeState {}
