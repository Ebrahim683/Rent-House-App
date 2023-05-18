import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/owner/bookhouserequestmodel/book_house_request_list_model.dart';
import 'package:rent_house/data/network/repository/book_house_request_repository.dart';
import 'package:rent_house/state/cubit/owner/bookhouserequest/book_house_request_state.dart';

class BookHouseRequestListCubit extends Cubit<BookHouseRequestListState> {
  BookHouseRequestListCubit() : super(BookHouseRequestListInitialState()) {
    getBookHouseRequest();
  }

  getBookHouseRequest() async {
    emit(BookHouseRequestListLoadingState());
    try {
      final result = await BookHouseRequestRepository.getBookRoomRequest();
      BookHouseRequestListModel bookHouseRequestListModel =
          BookHouseRequestListModel.fromJson(result);
      emit(BookHouseRequestListSuccessState(bookHouseRequestListModel));
    } catch (e) {
      emit(BookHouseRequestListErrorState(e.toString()));
    }
  }
}
