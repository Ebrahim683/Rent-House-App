import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/network/repository/book_house_repository.dart';
import 'package:rent_house/state/cubit/bookhouse/book_house_state.dart';

import '../../../data/model/common/common_model.dart';

class BookHouseCubit extends Cubit<BookHouseState> {
  BookHouseCubit() : super(BookHouseInitialState());

  bookRoom({
    required String ownerName,
    required String ownerNumber,
    required int houseId,
  }) async {
    emit(BookHouseLoadingState());
    try {
      final result = await BookHouseRepository.bookHouseRepo(
        ownerName: ownerName,
        ownerNumber: ownerNumber,
        houseId: houseId,
      );
      CommonModel commonModel = CommonModel.fromJson(result);
      emit(BookHouseSuccessState(commonModel));
    } catch (e) {
      emit(BookHouseErrorState(e.toString()));
    }
  }
}
