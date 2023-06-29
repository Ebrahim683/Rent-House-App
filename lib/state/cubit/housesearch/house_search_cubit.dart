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

  bool get getAscending => _isAscending;

  searchHouse(String query) {
    if (query == '') {
      emit(ErrorState('Please enter address'));
    } else {
      emit(SearchHouseState(houseListModel));
    }
  }

  sortHouse(String query) {
    if (query == '') {
      emit(ErrorState('Please enter address'));
    } else {
      getAscending == true
          ? houseListModel.sort(
              (a, b) => a.fee!.compareTo(b.fee!),
            )
          : houseListModel.sort(
              (a, b) => b.fee!.compareTo(a.fee!),
            );
      emit(SearchHouseState(houseListModel));
    }
  }

  filterHouse(String query, int low, int high) {
    if (low > high) {
      emit(ErrorState('Filtering not correct'));
    } else {
      List<HouseModel> list = houseListModel
          .where((element) => element.fee! >= low && element.fee! <= high)
          .toList();
      list.sort((a, b) => a.fee!.compareTo(b.fee!));
      emit(SearchHouseState(list));
    }
  }
}
