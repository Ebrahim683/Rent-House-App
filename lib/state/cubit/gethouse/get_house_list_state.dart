import 'package:rent_house/data/model/gethousemodel/get_house_list_model.dart';

abstract class GetHouseListState {}

class GetHouseListInitialState extends GetHouseListState {}

class GetHouseListLoadingState extends GetHouseListState {}

class GetHouseListSuccessState extends GetHouseListState {
  final GetHouseListModel getHouseListModel;
  GetHouseListSuccessState(this.getHouseListModel);
}

class GetHouseListErrorState extends GetHouseListState {
  final String error;
  GetHouseListErrorState(this.error);
}
