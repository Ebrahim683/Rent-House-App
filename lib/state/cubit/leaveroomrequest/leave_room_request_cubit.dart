import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/network/repository/leave_room_request_repository.dart';
import 'package:rent_house/state/cubit/leaveroomrequest/leave_room_request_state.dart';

import '../../../data/model/common/common_model.dart';

class LeaveRoomRequestCubit extends Cubit<LeaveRoomRequestState> {
  LeaveRoomRequestCubit() : super(LeaveRoomRequestInitialState());

  leaveRoom({
    required int id,
    required String userName,
    required String userNumber,
  }) async {
    emit(LeaveRoomRequestLoadingState());
    try {
      final result = await LeaveRoomRequestRepository.leaveRoom(
          id: id, userName: userName, userNumber: userNumber);
      CommonModel commonModel = CommonModel.fromJson(result);
      emit(LeaveRoomRequestSuccessState(commonModel));
    } catch (e) {
      emit(LeaveRoomRequestErrorState(e.toString()));
    }
  }
}
