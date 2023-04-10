import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/bookedhousemodel/booked_house_list_model.dart';
import 'package:rent_house/data/network/repository/booked_house_repository.dart';
import 'package:rent_house/state/cubit/showbookedhouse/show_booked_house_state.dart';

class ShowBookedHouseCubit extends Cubit<ShowBookedHouseState> {
  ShowBookedHouseCubit() : super(ShowBookedHouseInitialState()) {
    showBookedHouse();
  }

  showBookedHouse() async {
    emit(ShowBookedHouseLoadingState());
    try {
      final result = await BookedHouseRepository.bookedHouse();
      BookedHouseListModel bookedHouseListModel =
          BookedHouseListModel.fromJson(result);

      emit(ShowBookedHouseSuccessState(bookedHouseListModel));
    } catch (e) {
      emit(ShowBookedHouseErrorState(e.toString()));
    }
  }
}
