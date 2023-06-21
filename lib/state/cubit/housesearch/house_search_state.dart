import '../../../data/model/housemodel/house_list_model.dart';

abstract class HouseSearchState {}

class InitialState extends HouseSearchState {
  List<HouseModel> houseListModel;
  InitialState(this.houseListModel);
}

class SearchHouseState extends HouseSearchState {
  List<HouseModel> searchHouse;
  SearchHouseState(this.searchHouse);
}

class ErrorState extends HouseSearchState {
  String error;
  ErrorState(this.error);
}
