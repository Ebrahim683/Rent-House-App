import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/state/cubit/housesearch/house_search_state.dart';
import '../../../data/model/housemodel/house_list_model.dart';

class HouseSearchCubit extends Cubit<HouseSearchState> {
  List<HouseModel> houseListModel;
  bool _isAscending = true;
  HouseSearchCubit(this.houseListModel) : super(InitialState(houseListModel));

  setAscending(bool value) {
    _isAscending = value;
  }

  bool getAscending() => _isAscending;

  searchHouse(List<HouseModel> list, String query) {
    if (query == '') {
      emit(ErrorState('Please enter address'));
    } else {
      getAscending() == true
          ? list.sort(
              (a, b) => a.fee!.compareTo(b.fee!),
            )
          : list.sort(
              (a, b) => b.fee!.compareTo(a.fee!),
            );
      emit(SearchHouseState(list));
    }
  }
}
