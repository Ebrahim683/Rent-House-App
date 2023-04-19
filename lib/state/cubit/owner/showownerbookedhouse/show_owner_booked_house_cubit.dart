import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/network/repository/show_owner_booked_user_repository.dart';
import 'package:rent_house/state/cubit/owner/showownerbookedhouse/show_owner_booked_house_state.dart';

import '../../../../data/model/owner/bookedroommodel/show_booked_room_list_model.dart';

class ShowOwnerBookedHouseCubit extends Cubit<ShowOwnerBookedHouseState> {
  ShowOwnerBookedHouseCubit() : super(ShowOwnerBookedHouseInitialState()) {
    showUsers();
  }

  showUsers() async {
    emit(ShowOwnerBookedHouseLoadingState());
    try {
      final result = await ShowOwnerBookedUserRepository.showBookedUser();
      ShowBookedRoomListModel showBookedRoomListModel =
          ShowBookedRoomListModel.fromJson(result);
      emit(ShowOwnerBookedHouseSuccessState(showBookedRoomListModel));
    } catch (e) {
      emit(ShowOwnerBookedHouseErrorState(e.toString()));
    }
  }
}
