import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/owner/leaveroomlistmodel/leave_room_list_model.dart';
import 'package:rent_house/data/network/repository/leave_room_request_list_repository.dart';
import 'package:rent_house/state/cubit/owner/leaveroomrequestlist/leave_room_request_list_state.dart';

class LeaveRoomRequestListCubit extends Cubit<LeaveRoomRequestListState> {
  LeaveRoomRequestListCubit() : super(LeaveRoomRequestInitialState()) {
    getRequestList();
  }
  getRequestList() async {
    emit(LeaveRoomRequestLoadingState());
    try {
      final result = await LeaveRoomRequestListRepository.requestList();
      LeaveRoomListModel leaveRoomListModel =
          LeaveRoomListModel.fromJson(result);
      emit(LeaveRoomRequestSuccessState(leaveRoomListModel));
    } catch (e) {
      emit(LeaveRoomRequestErrorState(e.toString()));
    }
  }
}
