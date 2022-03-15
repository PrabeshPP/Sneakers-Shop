part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class ItemLoading extends HomeEvent {}

class ItemLoaded extends HomeEvent {
  final IconsServices iconsServices;
  const ItemLoaded({required this.iconsServices});

  @override
  List<Object> get props => [iconsServices];
}

class LoadingError extends HomeEvent {}
