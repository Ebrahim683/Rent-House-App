import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/common/common_model.dart';
import 'package:rent_house/data/model/profile/profile_model_list.dart';
import 'package:rent_house/state/cubit/profile/profile_state.dart';

import '../../../data/network/repository/profile_repository.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final String phoneNumber;
  ProfileCubit(this.phoneNumber) : super(InitialState()) {
    getProfile(phoneNumber: phoneNumber);
  }

  getProfile({required String phoneNumber}) async {
    emit(LoadingState());
    try {
      final result =
          await ProfileRepository.getProfile(phoneNumber: phoneNumber);
      ProfileModelList profileModelList = ProfileModelList.fromJson(result);
      emit(SuccessState(profileModelList));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }

  updateProfile({required File profilePic}) async {
    emit(LoadingState());
    try {
      final result =
          await ProfileRepository.updateProfile(profilePic: profilePic);
      CommonModel commonModel = CommonModel.fromJson(result);
      emit(UpdateSuccessState(commonModel));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
