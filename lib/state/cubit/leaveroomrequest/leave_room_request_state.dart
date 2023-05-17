import '../../../data/model/common/common_model.dart';

abstract class LeaveRoomRequestState {}

class LeaveRoomRequestInitialState extends LeaveRoomRequestState {}

class LeaveRoomRequestLoadingState extends LeaveRoomRequestState {}

class LeaveRoomRequestErrorState extends LeaveRoomRequestState {
  final String error;
  LeaveRoomRequestErrorState(this.error);
}

class LeaveRoomRequestSuccessState extends LeaveRoomRequestState {
  final CommonModel commonModel;
  LeaveRoomRequestSuccessState(this.commonModel);
}
