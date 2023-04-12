import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/bookhouse/book_house_model.dart';
import 'package:rent_house/data/network/repository/book_house_repository.dart';
import 'package:rent_house/state/cubit/bookhouse/book_house_state.dart';

class BookHouseCubit extends Cubit<BookHouseState> {
  BookHouseCubit() : super(BookHouseInitialState());

  bookRoom({
    required String phoneNumber,
    required String ownerName,
    required String ownerNumber,
    required int houseId,
  }) async {
    emit(BookHouseLoadingState());
    try {
      final result = await BookHouseRepository.bookHouseRepo(
        phoneNumber: phoneNumber,
        ownerName: ownerName,
        ownerNumber: ownerNumber,
        houseId: houseId,
      );
      BookHouseModel bookHouseModel =
          BookHouseModel.fromJson(result as Map<String, dynamic>);
      emit(BookHouseSuccessState(bookHouseModel));
    } catch (e) {
      emit(BookHouseErrorState(e.toString()));
    }
  }
}
