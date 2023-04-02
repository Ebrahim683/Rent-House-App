import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/state/cubit/authcubit/auth_state.dart';
import 'package:rent_house/data/model/authmodel/auth_model.dart';
import 'package:rent_house/data/network/repository/auth_repository.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());

  login({required String phoneNumber, required String password}) async {
    emit(AuthLoadingState());
    try {
      final result = await AuthRepository.loginUser(
          phoneNumber: phoneNumber, password: password);
      AuthModel authModel = AuthModel.fromJson(result);
      emit(AuthSuccessState(authModel));
    } catch (e) {
      emit(AuthErrorState(e.toString()));
    }
  }

  register(
      {required String name,
      required String phoneNumber,
      required String email,
      required String password}) async {
    emit(AuthLoadingState());
    try {
      final result = await AuthRepository.registerUser(
          name: name,
          phoneNumber: phoneNumber,
          email: email,
          password: password);
      AuthModel authModel = AuthModel.fromJson(result);
      emit(AuthSuccessState(authModel));
    } catch (e) {
      emit(AuthErrorState(e.toString()));
    }
  }

  bool isLoading = false;
}
