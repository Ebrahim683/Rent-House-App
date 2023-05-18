import 'package:rent_house/data/model/owner/bookhouserequestmodel/book_house_request_list_model.dart';

abstract class BookHouseRequestListState {}

class BookHouseRequestListInitialState extends BookHouseRequestListState {}

class BookHouseRequestListLoadingState extends BookHouseRequestListState {}

class BookHouseRequestListErrorState extends BookHouseRequestListState {
  final String error;
  BookHouseRequestListErrorState(this.error);
}

class BookHouseRequestListSuccessState extends BookHouseRequestListState {
  final BookHouseRequestListModel bookHouseRequestListModel;
  BookHouseRequestListSuccessState(this.bookHouseRequestListModel);
}
