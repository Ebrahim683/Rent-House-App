
import '../../../data/model/housemodel/house_list_model.dart';

abstract class GetHouseListState {}

class GetHouseListInitialState extends GetHouseListState {}

class GetHouseListLoadingState extends GetHouseListState {}

class GetHouseListSuccessState extends GetHouseListState {
  final HouseListModel houseListModel;
  GetHouseListSuccessState(this.houseListModel);
}

class GetHouseListErrorState extends GetHouseListState {
  final String error;
  GetHouseListErrorState(this.error);
}
