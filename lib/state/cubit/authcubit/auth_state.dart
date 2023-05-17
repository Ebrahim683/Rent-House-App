import '../../../data/model/common/common_model.dart';

abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthSuccessState extends AuthState {
  CommonModel commonModel;
  AuthSuccessState(this.commonModel);
}

class AuthErrorState extends AuthState {
  String error;
  AuthErrorState(this.error);
}
