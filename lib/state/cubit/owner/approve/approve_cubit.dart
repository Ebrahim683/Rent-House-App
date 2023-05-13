import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/authmodel/auth_model.dart';
import 'package:rent_house/data/network/repository/approve_repository.dart';
import 'package:rent_house/state/cubit/owner/approve/approve_state.dart';

class ApproveCubit extends Cubit<ApproveState> {
  ApproveCubit() : super(ApproveInitialState());

  approve({
    required int requestId,
    required int houseId,
    required String userName,
    required String userNumber,
    required String time,
  }) async {
    emit(ApproveLoadingState());
    try {
      final result = await ApproveRepository.approve(
        requestId: requestId,
        houseId: houseId,
        userName: userName,
        userNumber: userNumber,
        time: time,
      );
      AuthModel authModel = AuthModel.fromJson(result);
      emit(ApproveSuccessState(authModel));
    } catch (e) {
      emit(ApproveErrorState(e.toString()));
    }
  }
}
