import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/owner/addhousemodel/add_house_model.dart';
import 'package:rent_house/data/network/repository/add_house_repository.dart';
import 'package:rent_house/state/cubit/owner/addhouse/add_house_state.dart';

class AddHouseCubit extends Cubit<AddHouseState> {
  AddHouseCubit() : super(AddHouseInitialState());

  addHouse({
    required String fee,
    required String advanceFee,
    required String quantity,
    required String electricityFee,
    required String gasFee,
    required String othersFee,
    required String address,
    required String notice,
    required String status,
    required String image,
    required String category,
  }) async {
    emit(AddHouseLoadingState());
    try {
      final result = await AddHouseRepository.addHouseRepo(
          fee: fee,
          advanceFee: advanceFee,
          quantity: quantity,
          electricityFee: electricityFee,
          gasFee: gasFee,
          othersFee: othersFee,
          address: address,
          notice: notice,
          status: status,
          image: image,
          category: category);
      AddHouseModel addHouseModel = AddHouseModel.fromJson(result);
      emit(AddHouseSuccessState(addHouseModel));
    } catch (e) {
      emit(AddHouseErrorState(e.toString()));
    }
  }
}
