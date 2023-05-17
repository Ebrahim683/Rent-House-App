import 'package:freezed_annotation/freezed_annotation.dart';

part 'booked_house_list_model.g.dart';
part 'booked_house_list_model.freezed.dart';

@freezed
class BookedHouseListModel with _$BookedHouseListModel {
  const factory BookedHouseListModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'status') String? status,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'message') String? message,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'data') List<BookedHouseModel>? bookedHouseModel,
  }) = _BookedHouseListModel;
  factory BookedHouseListModel.fromJson(Map<String, dynamic> json) =>
      _$BookedHouseListModelFromJson(json);
}

@freezed
class BookedHouseModel with _$BookedHouseModel {
  const factory BookedHouseModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'id') int? id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'user_id') int? userId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'payment') String? payment,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'owner_id') int? ownerId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'owner_name') String? ownerName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'owner_number') String? ownerNumber,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image') String? image,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'category') String? category,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'fee') String? fee,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'quantity') String? quantity,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'advance_fee') String? advanceFee,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'electricity_fee') String? electricityFee,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'gas_fee') String? gasFee,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'others_fee') String? othersFee,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'address') String? address,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'notice') String? notice,
  }) = _BookedHouseModel;
  factory BookedHouseModel.fromJson(Map<String, dynamic> json) =>
      _$BookedHouseModelFromJson(json);
}
