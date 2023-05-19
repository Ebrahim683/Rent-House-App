import 'package:freezed_annotation/freezed_annotation.dart';

part 'house_list_model.g.dart';
part 'house_list_model.freezed.dart';

@freezed
class HouseListModel with _$HouseListModel {
  const factory HouseListModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<HouseModel>? houseModel,
  }) = _HouseListModel;
  factory HouseListModel.fromJson(Map<String, dynamic> json) =>
      _$HouseListModelFromJson(json);
}

@freezed
class HouseModel with _$HouseModel {
  const factory HouseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'owner_name') String? ownerName,
    @JsonKey(name: 'owner_number') String? ownerNumber,
    @JsonKey(name: 'owner_id') int? ownerId,
    @JsonKey(name: 'image1') String? image1,
    @JsonKey(name: 'image2') String? image2,
    @JsonKey(name: 'image3') String? image3,
    @JsonKey(name: 'image4') String? image4,
    @JsonKey(name: 'video') String? video,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'fee') String? fee,
    @JsonKey(name: 'quantity') String? quantity,
    @JsonKey(name: 'advance_fee') String? advanceFee,
    @JsonKey(name: 'electricity_fee') String? electricityFee,
    @JsonKey(name: 'gas_fee') String? gasFee,
    @JsonKey(name: 'others_fee') String? othersFee,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'notice') String? notice,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'can_book') String? canBook,
    @JsonKey(name: 'house_id') int? houseId,
    @JsonKey(name: 'time') String? time,
  }) = _HouseModel;
  factory HouseModel.fromJson(Map<String, dynamic> json) =>
      _$HouseModelFromJson(json);
}
