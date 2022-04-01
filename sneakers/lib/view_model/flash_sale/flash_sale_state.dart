part of 'flash_sale_bloc.dart';

abstract class FlashSaleState extends Equatable {
  const FlashSaleState();

  @override
  List<Object> get props => [];
}

class FlashSaleInitial extends FlashSaleState {
  final int duration;

  const FlashSaleInitial({required this.duration});
  @override
  List<Object> get props => [duration];
}
