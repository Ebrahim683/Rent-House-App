import '../../../../data/model/common/common_model.dart';

abstract class AddHouseState {}

class AddHouseInitialState extends AddHouseState {}

class AddHouseLoadingState extends AddHouseState {}

class AddHouseSuccessState extends AddHouseState {
  final CommonModel commonModel;
  AddHouseSuccessState(this.commonModel);
}

class AddHouseErrorState extends AddHouseState {
  final String error;
  AddHouseErrorState(this.error);
}
