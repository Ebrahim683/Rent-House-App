import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/authmodel/login_model.dart';
import 'package:rent_house/data/network/repository/auth_repository.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  login({
    required String phoneNumber,
    required String password,
    required deviceToken,
  }) async {
    emit(LoginLoadingState());
    try {
      final result = await AuthRepository.loginUser(
        phoneNumber: phoneNumber,
        password: password,
        deviceToken: deviceToken,
      );
      LoginModel loginModel = LoginModel.fromJson(result);
      emit(LoginSuccessState(loginModel));
    } catch (e) {
      emit(LoginErrorState(e.toString()));
    }
  }
}
