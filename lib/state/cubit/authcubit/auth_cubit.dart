import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/common/common_model.dart';
import 'package:rent_house/state/cubit/authcubit/auth_state.dart';
import 'package:rent_house/data/network/repository/auth_repository.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());

  register({
    required String name,
    required String phoneNumber,
    required String email,
    required String password,
    required String role,
    required String deviceToken,
  }) async {
    emit(AuthLoadingState());
    try {
      final result = await AuthRepository.registerUser(
        name: name,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
        role: role,
        deviceToken: deviceToken,
      );
      CommonModel commonModel = CommonModel.fromJson(result);
      emit(AuthSuccessState(commonModel));
    } catch (e) {
      emit(AuthErrorState(e.toString()));
    }
  }
}
