import 'package:rent_house/data/model/profile/profile_model_list.dart';

abstract class ProfileState {}

class InitialState extends ProfileState {}

class LoadingState extends ProfileState {}

class ErrorState extends ProfileState {
  final String error;
  ErrorState(this.error);
}

class SuccessState extends ProfileState {
  final ProfileModelList profileModelList;
  SuccessState(this.profileModelList);
}
