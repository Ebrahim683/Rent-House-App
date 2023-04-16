import 'package:rent_house/data/model/owner/addhousemodel/add_house_model.dart';

abstract class AddHouseState {}

class AddHouseInitialState extends AddHouseState {}

class AddHouseLoadingState extends AddHouseState {}

class AddHouseSuccessState extends AddHouseState {
  final AddHouseModel addHouseModel;
  AddHouseSuccessState(this.addHouseModel);
}

class AddHouseErrorState extends AddHouseState {
  final String error;
  AddHouseErrorState(this.error);
}
