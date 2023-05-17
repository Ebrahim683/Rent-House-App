import 'dart:developer';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/network/repository/add_house_repository.dart';
import 'package:rent_house/state/cubit/owner/addhouse/add_house_state.dart';

import '../../../../data/model/common/common_model.dart';

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
    required String canBook,
    required String category,
    required List<File> imageList,
    required File video,
  }) async {
    emit(AddHouseLoadingState());
    try {
      log('${canBook}cubit');
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
        canBook: canBook,
        category: category,
        imageList: imageList,
        video: video,
      );
      CommonModel commonModel = CommonModel.fromJson(result);
      emit(AddHouseSuccessState(commonModel));
    } catch (e) {
      emit(AddHouseErrorState(e.toString()));
    }
  }
}
