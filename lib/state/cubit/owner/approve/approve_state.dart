
import '../../../../data/model/common/common_model.dart';

abstract class ApproveState {}

class ApproveInitialState extends ApproveState {}

class ApproveLoadingState extends ApproveState {}

class ApproveErrorState extends ApproveState {
  final String error;
  ApproveErrorState(this.error);
}

class ApproveSuccessState extends ApproveState {
  final CommonModel commonModel;
  ApproveSuccessState(this.commonModel);
}
