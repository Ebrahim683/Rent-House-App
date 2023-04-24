import 'package:rent_house/data/model/authmodel/auth_model.dart';

abstract class LeaveRoomRequestState {}

class LeaveRoomRequestInitialState extends LeaveRoomRequestState {}

class LeaveRoomRequestLoadingState extends LeaveRoomRequestState {}

class LeaveRoomRequestErrorState extends LeaveRoomRequestState {
  final String error;
  LeaveRoomRequestErrorState(this.error);
}

class LeaveRoomRequestSuccessState extends LeaveRoomRequestState {
  final AuthModel authModel;
  LeaveRoomRequestSuccessState(this.authModel);
}
