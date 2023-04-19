import 'package:rent_house/data/model/owner/bookedroommodel/show_booked_room_list_model.dart';

abstract class ShowOwnerBookedHouseState {}

class ShowOwnerBookedHouseInitialState extends ShowOwnerBookedHouseState {}

class ShowOwnerBookedHouseLoadingState extends ShowOwnerBookedHouseState {}

class ShowOwnerBookedHouseErrorState extends ShowOwnerBookedHouseState {
  final String error;
  ShowOwnerBookedHouseErrorState(this.error);
}

class ShowOwnerBookedHouseSuccessState extends ShowOwnerBookedHouseState {
  final ShowBookedRoomListModel showBookedRoomListModel;
  ShowOwnerBookedHouseSuccessState(this.showBookedRoomListModel);
}
