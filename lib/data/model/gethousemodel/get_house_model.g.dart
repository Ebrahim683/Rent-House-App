// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_house_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetHouseModel _$$_GetHouseModelFromJson(Map<String, dynamic> json) =>
    _$_GetHouseModel(
      id: json['id'] as int?,
      ownerName: json['owner_name'] as String?,
      ownerNumber: json['owner_number'] as String?,
      ownerId: json['owner_id'] as int?,
      image: json['image'] as String?,
      category: json['category'] as String?,
      fee: json['fee'] as String?,
      quantity: json['quantity'] as String?,
      advanceFee: json['advance_fee'] as String?,
      electricityFee: json['electricity_fee'] as String?,
      gasFee: json['gas_fee'] as String?,
      othersFee: json['others_fee'] as String?,
      address: json['address'] as String?,
      notice: json['notice'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_GetHouseModelToJson(_$_GetHouseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_name': instance.ownerName,
      'owner_number': instance.ownerNumber,
      'owner_id': instance.ownerId,
      'image': instance.image,
      'category': instance.category,
      'fee': instance.fee,
      'quantity': instance.quantity,
      'advance_fee': instance.advanceFee,
      'electricity_fee': instance.electricityFee,
      'gas_fee': instance.gasFee,
      'others_fee': instance.othersFee,
      'address': instance.address,
      'notice': instance.notice,
      'status': instance.status,
    };
