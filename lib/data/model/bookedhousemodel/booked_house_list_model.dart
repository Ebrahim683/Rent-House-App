import 'package:freezed_annotation/freezed_annotation.dart';

part 'booked_house_list_model.g.dart';
part 'booked_house_list_model.freezed.dart';

@freezed
class BookedHouseListModel with _$BookedHouseListModel {
  const factory BookedHouseListModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') List<BookedHouseModel>? bookedHouseModel,
  }) = _BookedHouseListModel;
  factory BookedHouseListModel.fromJson(Map<String, dynamic> json) =>
      _$BookedHouseListModelFromJson(json);
}

@freezed
class BookedHouseModel with _$BookedHouseModel {
  const factory BookedHouseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'payment') String? payment,
    @JsonKey(name: 'owner_id') int? ownerId,
    @JsonKey(name: 'owner_name') String? ownerName,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'fee') String? fee,
    @JsonKey(name: 'quantity') String? quantity,
    @JsonKey(name: 'advance_fee') String? advanceFee,
    @JsonKey(name: 'electricity_fee') String? electricityFee,
    @JsonKey(name: 'gas_fee') String? gasFee,
    @JsonKey(name: 'others_fee') String? othersFee,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'notice') String? notice,
  }) = _BookedHouseModel;
  factory BookedHouseModel.fromJson(Map<String, dynamic> json) =>
      _$BookedHouseModelFromJson(json);
}
