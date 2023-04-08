import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_house_model.g.dart';
part 'get_house_model.freezed.dart';

@freezed
class GetHouseModel with _$GetHouseModel {
  const factory GetHouseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'owner_name') String? ownerName,
    @JsonKey(name: 'owner_number') String? ownerNumber,
    @JsonKey(name: 'owner_id') int? ownerId,
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
    @JsonKey(name: 'status') String? status,
  }) = _GetHouseModel;
  factory GetHouseModel.fromJson(Map<String, dynamic> json) =>
      _$GetHouseModelFromJson(json);
}
