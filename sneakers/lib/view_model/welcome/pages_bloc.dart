import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pages_event.dart';
part 'pages_state.dart';

class PagesBloc extends Bloc<PagesEvent, PagesState> {
  PagesBloc() : super(PagesInitial()) {
    on<PagesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
