import 'package:rent_house/data/model/authmodel/auth_model.dart';

abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthSuccessState extends AuthState {
  AuthModel authModel;
  AuthSuccessState(this.authModel);
}

class AuthErrorState extends AuthState {
  String error;
  AuthErrorState(this.error);
}
