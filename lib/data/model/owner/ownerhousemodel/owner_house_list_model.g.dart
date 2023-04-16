// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_house_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OwnerHouseListModel _$$_OwnerHouseListModelFromJson(
        Map<String, dynamic> json) =>
    _$_OwnerHouseListModel(
      status: json['status'] as String?,
      ownerHouseModel: (json['message'] as List<dynamic>?)
          ?.map((e) => OwnerHouseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OwnerHouseListModelToJson(
        _$_OwnerHouseListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.ownerHouseModel,
    };

_$_OwnerHouseModel _$$_OwnerHouseModelFromJson(Map<String, dynamic> json) =>
    _$_OwnerHouseModel(
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

Map<String, dynamic> _$$_OwnerHouseModelToJson(_$_OwnerHouseModel instance) =>
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
