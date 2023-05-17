import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_house_model.g.dart';
part 'get_house_model.freezed.dart';

@freezed
class GetHouseModel with _$GetHouseModel {
  const factory GetHouseModel({
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
    // ignore: invalid_annotation_target
    @JsonKey(name: 'time') String? time,
  }) = _GetHouseModel;
  factory GetHouseModel.fromJson(Map<String, dynamic> json) =>
      _$GetHouseModelFromJson(json);
}
