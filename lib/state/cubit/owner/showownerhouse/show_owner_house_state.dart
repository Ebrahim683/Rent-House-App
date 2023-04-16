import 'package:rent_house/data/model/owner/ownerhousemodel/owner_house_list_model.dart';

abstract class ShowOwnerHouseState {}

class ShowOwnerHouseInitialState extends ShowOwnerHouseState {}

class ShowOwnerHouseLoadingState extends ShowOwnerHouseState {}

class ShowOwnerHouseSuccessState extends ShowOwnerHouseState {
  final OwnerHouseListModel ownerHouseListModel;
  ShowOwnerHouseSuccessState(this.ownerHouseListModel);
}

class ShowOwnerHouseErrorState extends ShowOwnerHouseState {
  final String error;
  ShowOwnerHouseErrorState(this.error);
}
