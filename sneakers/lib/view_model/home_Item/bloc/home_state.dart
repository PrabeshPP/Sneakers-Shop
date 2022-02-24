part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class ItemLoadedState extends HomeState {
  final List<Item> listItem;
  const ItemLoadedState({required this.listItem});

  @override
  List<Object> get props => [listItem];
}

class ErrorLoading extends HomeState{}
