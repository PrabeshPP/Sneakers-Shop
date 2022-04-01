import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nepseapp/view_model/ticker/ticker.dart';

part 'flash_sale_event.dart';
part 'flash_sale_state.dart';

class FlashSaleBloc extends Bloc<FlashSaleEvent, FlashSaleState> {
  final int duration;
  final Ticker ticker;
  FlashSaleBloc(this.duration,this.ticker) : super(FlashSaleInitial(duration: duration)) {
    on<FlashSaleEvent>((event, emit) {});
  }

  void _onStarted(){

  }

  void _onTicked(){
    
  }
}
