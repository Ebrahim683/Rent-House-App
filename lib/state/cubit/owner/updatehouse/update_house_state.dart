import 'package:rent_house/data/model/authmodel/auth_model.dart';

abstract class UpdateHouseState {}

class UpdateHouseInitialState extends UpdateHouseState {}

class UpdateHouseLoadingState extends UpdateHouseState {}

class UpdateHouseErrorState extends UpdateHouseState {
  final String error;
  UpdateHouseErrorState(this.error);
}

class UpdateHouseSuccessState extends UpdateHouseState {
  final AuthModel authModel;
  UpdateHouseSuccessState(this.authModel);
}
