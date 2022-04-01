import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nepseapp/view_model/ticker/ticker.dart';

part 'flash_sale_event.dart';
part 'flash_sale_state.dart';

class FlashSaleBloc extends Bloc<FlashSaleEvent, FlashSaleState> {
  final int duration;
  final Ticker ticker;
  StreamSubscription<int>? _streamSubscription;
  FlashSaleBloc(this.duration, this.ticker)
      : super(FlashSaleInitial(duration: duration)) {
    on<FlashSaleStarted>(_onStarted);
    on<FlashSaleTicked>(_onTicked);
  }

  //This function is to cancel the already opened _streamSubscription
  @override
  Future<void> close() {
    _streamSubscription!.cancel();
    return super.close();
  }

  void _onStarted(FlashSaleStarted event, Emitter<FlashSaleState> emit) {
    emit(FlashSaleInProgress(duration: event.duration));
    _streamSubscription!.cancel();
    _streamSubscription = ticker
        .tick(ticks: event.duration)
        .listen((duration) => add(FlashSaleTicked(duration: duration)));
  }

  void _onTicked(FlashSaleTicked event, Emitter<FlashSaleState> emit) {
    emit(event.duration > 0
        ? FlashSaleInProgress(duration: event.duration)
        : FlashSaleCompleted());
  }
}
