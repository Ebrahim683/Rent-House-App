import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_house_list_model.g.dart';
part 'owner_house_list_model.freezed.dart';

@freezed
class OwnerHouseListModel with _$OwnerHouseListModel {
  const factory OwnerHouseListModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'status') String? status,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'message') String? message,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'data') List<OwnerHouseModel>? ownerHouseModel,
  }) = _OwnerHouseListModel;
  factory OwnerHouseListModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerHouseListModelFromJson(json);
}

@freezed
class OwnerHouseModel with _$OwnerHouseModel {
  const factory OwnerHouseModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'id') int? id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'owner_name') String? ownerName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'owner_number') String? ownerNumber,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'owner_id') int? ownerId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image1') String? image1,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image2') String? image2,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image3') String? image3,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image4') String? image4,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'video') String? video,
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
    // ignore: invalid_annotation_target
    @JsonKey(name: 'status') String? status,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'can_book') String? canBook,
  }) = _OwnerHouseModel;
  factory OwnerHouseModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerHouseModelFromJson(json);
}
