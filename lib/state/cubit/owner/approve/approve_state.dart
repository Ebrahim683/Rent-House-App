import 'package:rent_house/data/model/authmodel/auth_model.dart';

abstract class ApproveState {}

class ApproveInitialState extends ApproveState {}

class ApproveLoadingState extends ApproveState {}

class ApproveErrorState extends ApproveState {
  final String error;
  ApproveErrorState(this.error);
}

class ApproveSuccessState extends ApproveState {
  final AuthModel authModel;
  ApproveSuccessState(this.authModel);
}
