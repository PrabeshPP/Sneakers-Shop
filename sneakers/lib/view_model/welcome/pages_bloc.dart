import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'pages_event.dart';
part 'pages_state.dart';

class PagesBloc extends Bloc<PagesEvent, PagesState> with HydratedMixin {
  PagesBloc() : super(PagesInitial()) {
    on<LaterPage>(_onLaterPage);
  }

  void _onLaterPage(PagesEvent event, Emitter<PagesState> emit) {
    emit(AppViewPage());
  }

  @override
  PagesState? fromJson(Map<String, dynamic> json) {
    
  }

  @override
  Map<String, dynamic>? toJson(PagesState state) {
      
  }
}
