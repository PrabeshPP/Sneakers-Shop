part of 'brands_icon_bloc.dart';

abstract class BrandsIconEvent extends Equatable {
  const BrandsIconEvent();

  @override
  List<Object> get props => [];
}

class ItemLoading extends BrandsIconEvent {}

class ItemLoaded extends BrandsIconEvent {
  final IconsServices iconsServices;

  const ItemLoaded({required this.iconsServices});

  @override
  List<Object> get props => [iconsServices];
}

class LoadingError extends BrandsIconEvent {}
