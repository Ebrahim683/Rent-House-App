import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_house/data/model/bookhouse/book_house_model.dart';
import 'package:rent_house/data/network/repository/book_house_repository.dart';
import 'package:rent_house/state/cubit/bookhouse/book_house_state.dart';

class BookHouseCubit extends Cubit<BookHouseState> {
  BookHouseCubit() : super(BookHouseInitialState());

  bookRoom({
    required String phoneNumber,
    required String payment,
    required int ownerId,
    required String ownerName,
    required String image,
    required String category,
    required String fee,
    required String quantity,
    required String advanceFee,
    required String electricityFee,
    required String gasFee,
    required String othersFee,
    required String address,
    required String notice,
  }) async {
    emit(BookHouseLoadingState());
    try {
      final result = await BookHouseRepository.bookHouseRepo(
          phoneNumber: phoneNumber,
          payment: payment,
          ownerId: ownerId,
          ownerName: ownerName,
          image: image,
          category: category,
          fee: fee,
          quantity: quantity,
          advanceFee: advanceFee,
          electricityFee: electricityFee,
          gasFee: gasFee,
          othersFee: othersFee,
          address: address,
          notice: notice);
      BookHouseModel bookHouseModel =
          BookHouseModel.fromJson(result as Map<String, dynamic>);
      emit(BookHouseSuccessState(bookHouseModel));
    } catch (e) {
      emit(BookHouseErrorState(e.toString()));
    }
  }
}
