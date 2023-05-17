import '../../../data/model/common/common_model.dart';

abstract class BookHouseState {}

class BookHouseInitialState extends BookHouseState {}

class BookHouseLoadingState extends BookHouseState {}

class BookHouseSuccessState extends BookHouseState {
  final CommonModel commonModel;
  BookHouseSuccessState(this.commonModel);
}

class BookHouseErrorState extends BookHouseState {
  final String error;
  BookHouseErrorState(this.error);
}
