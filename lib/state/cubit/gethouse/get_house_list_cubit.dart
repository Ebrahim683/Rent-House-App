import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/gethousemodel/get_house_list_model.dart';

import '../../../data/network/repository/get_house_list.dart';
import 'get_house_list_state.dart';

class GetHouseListCubit extends Cubit<GetHouseListState> {
  String category;
  GetHouseListCubit(this.category) : super(GetHouseListInitialState()) {
    getHouse();
  }

  getHouse() async {
    emit(GetHouseListLoadingState());
    try {
      final result =
          await GetHouseListRepository.getHouseList(category: category);
      GetHouseListModel getHouseListModel = GetHouseListModel.fromJson(result);
      emit(GetHouseListSuccessState(getHouseListModel));
    } catch (e) {
      emit(GetHouseListErrorState(e.toString()));
    }
  }
}
