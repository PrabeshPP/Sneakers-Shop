

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nepseapp/model/brandsIcons.dart';
import 'package:nepseapp/model/item.dart';
import 'package:nepseapp/repository/icons_services.dart';
import 'package:nepseapp/services/repository/itemservices.dart';


part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IconsServices _iconsServices;
  HomeBloc({required IconsServices iconsServices})
      : _iconsServices = iconsServices,
        super(HomeInitial()) {
    on<ItemLoading>(getItems);
  }

  Future<void>? getItems(ItemLoading event, Emitter<HomeState> emit) async {
    final List<BrandsIcon> itemList = await _iconsServices.getItem();
    try {
      if (itemList.isEmpty) {
        emit(HomeInitial());
      } else {
        emit(ItemLoadedState(listItem: itemList));
      }
    } catch (err) {
      emit(ErrorLoading());
    }
  }
}
