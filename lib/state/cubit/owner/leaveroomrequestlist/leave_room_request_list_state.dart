import 'package:rent_house/data/model/owner/leaveroomlistmodel/leave_room_list_model.dart';

abstract class LeaveRoomRequestListState {}

class LeaveRoomRequestInitialState extends LeaveRoomRequestListState {}

class LeaveRoomRequestLoadingState extends LeaveRoomRequestListState {}

class LeaveRoomRequestErrorState extends LeaveRoomRequestListState {
  final String error;
  LeaveRoomRequestErrorState(this.error);
}

class LeaveRoomRequestSuccessState extends LeaveRoomRequestListState {
  final LeaveRoomListModel leaveRoomListModel;
  LeaveRoomRequestSuccessState(this.leaveRoomListModel);
}
