import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nepseapp/repository/icons_services.dart';

part 'brands_icon_event.dart';
part 'brands_icon_state.dart';

class BrandsIconBloc extends Bloc<BrandsIconEvent, BrandsIconState> {
  BrandsIconBloc() : super(BrandsIconInitial()) {
    on<BrandsIconEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
