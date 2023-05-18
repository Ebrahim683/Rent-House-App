import 'package:freezed_annotation/freezed_annotation.dart';

part 'booked_house_list_model.g.dart';
part 'booked_house_list_model.freezed.dart';

@freezed
class BookedHouseListModel with _$BookedHouseListModel {
  const factory BookedHouseListModel({
    // ignore:  
    @JsonKey(name: 'status') String? status,
    // ignore:  
    @JsonKey(name: 'message') String? message,
    // ignore:  
    @JsonKey(name: 'data') List<BookedHouseModel>? bookedHouseModel,
  }) = _BookedHouseListModel;
  factory BookedHouseListModel.fromJson(Map<String, dynamic> json) =>
      _$BookedHouseListModelFromJson(json);
}

@freezed
class BookedHouseModel with _$BookedHouseModel {
  const factory BookedHouseModel({
    // ignore:  
    @JsonKey(name: 'id') int? id,
    // ignore:  
    @JsonKey(name: 'user_id') int? userId,
    // ignore:  
    @JsonKey(name: 'payment') String? payment,
    // ignore:  
    @JsonKey(name: 'owner_id') int? ownerId,
    // ignore:  
    @JsonKey(name: 'owner_name') String? ownerName,
    // ignore:  
    @JsonKey(name: 'owner_number') String? ownerNumber,
    // ignore:  
    @JsonKey(name: 'image') String? image,
    // ignore:  
    @JsonKey(name: 'category') String? category,
    // ignore:  
    @JsonKey(name: 'fee') String? fee,
    // ignore:  
    @JsonKey(name: 'quantity') String? quantity,
    // ignore:  
    @JsonKey(name: 'advance_fee') String? advanceFee,
    // ignore:  
    @JsonKey(name: 'electricity_fee') String? electricityFee,
    // ignore:  
    @JsonKey(name: 'gas_fee') String? gasFee,
    // ignore:  
    @JsonKey(name: 'others_fee') String? othersFee,
    // ignore:  
    @JsonKey(name: 'address') String? address,
    // ignore:  
    @JsonKey(name: 'notice') String? notice,
  }) = _BookedHouseModel;
  factory BookedHouseModel.fromJson(Map<String, dynamic> json) =>
      _$BookedHouseModelFromJson(json);
}
