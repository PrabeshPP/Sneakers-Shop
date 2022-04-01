import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nepseapp/model/brandsIcons.dart';
import 'package:nepseapp/model/item.dart';
import 'package:nepseapp/repository/icons_services.dart';
import 'package:nepseapp/repository/itemservices.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IconsServices _iconsServices;
  final ItemServices _itemServices;
  HomeBloc(
      {required ItemServices itemServices,
      required IconsServices iconsServices})
      : _iconsServices = iconsServices,
        _itemServices = itemServices,
        super(HomeInitial()) {
    on<ItemLoading>(getItems);
  }

  Future<void>? getItems(ItemLoading event, Emitter<HomeState> emit) async {
    final List<BrandsIcon> iconsList = await _iconsServices.getItem();
    final List<Item> itemsList = await _itemServices.getItem();
    try {
      if (itemsList.isEmpty && iconsList.isEmpty) {
        emit(HomeInitial());
      } else {
        emit(ItemLoadedState(listIcons: iconsList, listItems: itemsList));
      }
    } catch (err) {
      emit(ErrorLoading());
    }
  }
}
