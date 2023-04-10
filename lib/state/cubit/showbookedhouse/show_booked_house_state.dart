import '../../../data/model/bookedhousemodel/booked_house_list_model.dart';

abstract class ShowBookedHouseState {}

class ShowBookedHouseInitialState extends ShowBookedHouseState {}

class ShowBookedHouseLoadingState extends ShowBookedHouseState {}

class ShowBookedHouseSuccessState extends ShowBookedHouseState {
  final BookedHouseListModel bookedHouseListModel;
  ShowBookedHouseSuccessState(this.bookedHouseListModel);
}

class ShowBookedHouseErrorState extends ShowBookedHouseState {
  final String error;
  ShowBookedHouseErrorState(this.error);
}
