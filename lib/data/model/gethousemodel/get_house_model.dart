import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_house_model.g.dart';
part 'get_house_model.freezed.dart';


@freezed
class GetHouseModel with _$GetHouseModel {
  const factory GetHouseModel({
    // ignore:  
    @JsonKey(name: 'id') int? id,
    // ignore:  
    @JsonKey(name: 'owner_name') String? ownerName,
    // ignore:  
    @JsonKey(name: 'owner_number') String? ownerNumber,
    // ignore:  
    @JsonKey(name: 'owner_id') int? ownerId,
    // ignore:  
    @JsonKey(name: 'image1') String? image1,
    // ignore:  
    @JsonKey(name: 'image2') String? image2,
    // ignore:  
    @JsonKey(name: 'image3') String? image3,
    // ignore:  
    @JsonKey(name: 'image4') String? image4,
    // ignore:  
    @JsonKey(name: 'video') String? video,
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
    // ignore:  
    @JsonKey(name: 'status') String? status,
    // ignore:  
    @JsonKey(name: 'can_book') String? canBook,
    // ignore:  
    @JsonKey(name: 'time') String? time,
  }) = _GetHouseModel;
  factory GetHouseModel.fromJson(Map<String, dynamic> json) =>
      _$GetHouseModelFromJson(json);
}
