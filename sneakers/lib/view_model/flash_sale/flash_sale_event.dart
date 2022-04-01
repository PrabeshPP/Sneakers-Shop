part of 'flash_sale_bloc.dart';

abstract class FlashSaleEvent extends Equatable {
  const FlashSaleEvent();

  @override
  List<Object> get props => [];
}

class FlashSaleStarted extends FlashSaleEvent {
  final int duration;

  const FlashSaleStarted({required this.duration});
  @override
  List<Object> get props => [duration];
}

class FlashSaleTicked extends FlashSaleEvent {
  final int duration;

  const FlashSaleTicked({required this.duration});
  @override
  List<Object> get props => [duration];
}
