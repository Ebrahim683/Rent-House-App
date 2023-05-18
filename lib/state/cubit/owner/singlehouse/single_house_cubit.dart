import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/common/common_model.dart';
import 'package:rent_house/data/model/gethousemodel/get_house_list_model.dart';
import 'package:rent_house/data/model/owner/bookhouserequestmodel/book_house_request_list_model.dart';
import 'package:rent_house/data/network/repository/get_single_house_repository.dart';
import 'package:rent_house/state/cubit/owner/singlehouse/single_house_state.dart';

class SingleHouseCubit extends Cubit<SingleHouseState> {
  final BookHouseRequestModel bookHouseRequestModel;
  SingleHouseCubit(this.bookHouseRequestModel) : super(InitialState()) {
    singleHouse(time: bookHouseRequestModel.time!);
  }
  singleHouse({required String time}) async {
    emit(LoadingState());
    try {
      final result = await GetSingleHouseRepository.singleHouse(time: time);
      GetHouseListModel getHouseListModel = GetHouseListModel.fromJson(result);
      emit(SuccessState(getHouseListModel));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }

  approve({required int houseId, required String userNumber}) async {
    emit(LoadingState());
    try {
      final result = await GetSingleHouseRepository.approve(
          houseId: houseId, userNumber: userNumber);
      CommonModel commonModel = CommonModel.fromJson(result);
      emit(SuccessStateApprove(commonModel));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
