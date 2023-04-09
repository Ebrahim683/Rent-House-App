import 'package:rent_house/data/model/bookhouse/book_house_model.dart';

abstract class BookHouseState {}

class BookHouseInitialState extends BookHouseState {}

class BookHouseLoadingState extends BookHouseState {}

class BookHouseSuccessState extends BookHouseState {
  final BookHouseModel bookHouseModel;
  BookHouseSuccessState(this.bookHouseModel);
}

class BookHouseErrorState extends BookHouseState {
  final String error;
  BookHouseErrorState(this.error);
}
