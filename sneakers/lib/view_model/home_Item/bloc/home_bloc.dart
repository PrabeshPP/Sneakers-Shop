import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nepseapp/model/item.dart';
import 'package:nepseapp/repository/itemservices.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ItemServices _itemServices;
  HomeBloc({required ItemServices itemServices})
      : _itemServices = itemServices,
        super(HomeInitial()) {
    on<HomeEvent>(getItems);
  }

  Future<void>? getItems(HomeEvent event, Emitter<HomeState> emit) async {
    final List<Item> itemList = await _itemServices.getItem();
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
