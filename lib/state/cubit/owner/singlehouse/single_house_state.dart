import 'package:rent_house/data/model/common/common_model.dart';

import '../../../../data/model/housemodel/house_list_model.dart';

abstract class SingleHouseState {}

class InitialState extends SingleHouseState {}

class LoadingState extends SingleHouseState {}

class ErrorState extends SingleHouseState {
  final String error;
  ErrorState(this.error);
}

class SuccessState extends SingleHouseState {
  final HouseListModel houseListModel;
  SuccessState(this.houseListModel);
}

class SuccessStateApprove extends SingleHouseState {
  final CommonModel commonModel;
  SuccessStateApprove(this.commonModel);
}
