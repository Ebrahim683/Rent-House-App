import 'package:rent_house/data/model/common/common_model.dart';
import 'package:rent_house/data/model/gethousemodel/get_house_list_model.dart';

abstract class SingleHouseState {}

class InitialState extends SingleHouseState {}

class LoadingState extends SingleHouseState {}

class ErrorState extends SingleHouseState {
  final String error;
  ErrorState(this.error);
}

class SuccessState extends SingleHouseState {
  final GetHouseListModel getHouseListModel;
  SuccessState(this.getHouseListModel);
}

class SuccessStateApprove extends SingleHouseState {
  final CommonModel commonModel;
  SuccessStateApprove(this.commonModel);
}
