import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/network/repository/update_house_repository.dart';
import 'package:rent_house/state/cubit/owner/updatehouse/update_house_state.dart';

import '../../../../data/model/common/common_model.dart';

class UpdateHouseCubit extends Cubit<UpdateHouseState> {
  UpdateHouseCubit() : super(UpdateHouseInitialState());

  updateHouse({
    required int houseId,
    required String category,
    required int fee,
    required String quantity,
    required int advanceFee,
    required int electricityFee,
    required int gasFee,
    required int othersFee,
    required String address,
    required String notice,
    required String status,
    required String canBook,
  }) async {
    emit(UpdateHouseLoadingState());
    try {
      final result = await UpdateHouseRepository.updateHouse(
        houseId: houseId,
        category: category,
        fee: fee,
        quantity: quantity,
        advanceFee: advanceFee,
        electricityFee: electricityFee,
        gasFee: gasFee,
        othersFee: othersFee,
        address: address,
        notice: notice,
        status: status,
        canBook: canBook,
      );
      CommonModel commonModel = CommonModel.fromJson(result);
      emit(UpdateHouseSuccessState(commonModel));
    } catch (e) {
      emit(UpdateHouseErrorState(e.toString()));
    }
  }
}
