import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_house_list_model.g.dart';
part 'owner_house_list_model.freezed.dart';

@freezed
class OwnerHouseListModel with _$OwnerHouseListModel {
  const factory OwnerHouseListModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<OwnerHouseModel>? ownerHouseModel,
  }) = _OwnerHouseListModel;
  factory OwnerHouseListModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerHouseListModelFromJson(json);
}

@freezed
class OwnerHouseModel with _$OwnerHouseModel {
  const factory OwnerHouseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'owner_name') String? ownerName,
    @JsonKey(name: 'owner_number') String? ownerNumber,
    @JsonKey(name: 'owner_id') int? ownerId,
    @JsonKey(name: 'image1') String? image1,
    @JsonKey(name: 'image2') String? image2,
    @JsonKey(name: 'image3') String? image3,
    @JsonKey(name: 'image4') String? image4,
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
  }) = _OwnerHouseModel;
  factory OwnerHouseModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerHouseModelFromJson(json);
}
