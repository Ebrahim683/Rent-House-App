import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/owner/ownerhousemodel/owner_house_list_model.dart';
import 'package:rent_house/data/network/repository/owner_dashboard_repository.dart';
import 'package:rent_house/state/cubit/owner/showownerhouse/show_owner_house_state.dart';

class ShowOwnerHouseCubit extends Cubit<ShowOwnerHouseState> {
  ShowOwnerHouseCubit() : super(ShowOwnerHouseInitialState()) {
    showOwnerHouse();
  }

  showOwnerHouse() async {
    emit(ShowOwnerHouseLoadingState());
    try {
      final result = await OwnerDashboardRepository.ownerDashboardHouse();
      OwnerHouseListModel ownerHouseListModel =
          OwnerHouseListModel.fromJson(result);
      emit(ShowOwnerHouseSuccessState(ownerHouseListModel));
    } catch (e) {
      emit(ShowOwnerHouseErrorState(e.toString()));
    }
  }
}
