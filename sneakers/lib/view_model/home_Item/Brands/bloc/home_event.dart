part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class ItemLoading extends HomeEvent {}

class ItemLoaded extends HomeEvent {
  final ItemServices itemServices;
  const ItemLoaded({required this.itemServices});

  @override
  List<Object> get props => [itemServices];
}

class IconsLoaded extends HomeEvent {
  final IconsServices iconsServices;
  const IconsLoaded({required this.iconsServices});

  @override
  List<Object> get props => [iconsServices];
}

class LoadingError extends HomeEvent {}
