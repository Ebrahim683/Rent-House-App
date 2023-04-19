import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/authmodel/auth_model.dart';
import 'package:rent_house/data/network/repository/update_house_repository.dart';
import 'package:rent_house/state/cubit/owner/updatehouse/update_house_state.dart';

class UpdateHouseCubit extends Cubit<UpdateHouseState> {
  UpdateHouseCubit() : super(UpdateHouseInitialState());

  updateHouse({
    required int houseId,
    required String category,
    required String fee,
    required String quantity,
    required String advanceFee,
    required String electricityFee,
    required String gasFee,
    required String othersFee,
    required String address,
    required String notice,
    required String status,
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
          status: status);
      AuthModel authModel = AuthModel.fromJson(result);
      emit(UpdateHouseSuccessState(authModel));
    } catch (e) {
      emit(UpdateHouseErrorState(e.toString()));
    }
  }
}
