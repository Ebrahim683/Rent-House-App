// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_house_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OwnerHouseListModel _$$_OwnerHouseListModelFromJson(
        Map<String, dynamic> json) =>
    _$_OwnerHouseListModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      ownerHouseModel: (json['data'] as List<dynamic>?)
          ?.map((e) => OwnerHouseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OwnerHouseListModelToJson(
        _$_OwnerHouseListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.ownerHouseModel,
    };

_$_OwnerHouseModel _$$_OwnerHouseModelFromJson(Map<String, dynamic> json) =>
    _$_OwnerHouseModel(
      id: json['id'] as int?,
      ownerName: json['owner_name'] as String?,
      ownerNumber: json['owner_number'] as String?,
      ownerId: json['owner_id'] as int?,
      image1: json['image1'] as String?,
      image2: json['image2'] as String?,
      image3: json['image3'] as String?,
      image4: json['image4'] as String?,
      video: json['video'] as String?,
      category: json['category'] as String?,
      fee: json['fee'] as int?,
      quantity: json['quantity'] as String?,
      advanceFee: json['advance_fee'] as int?,
      electricityFee: json['electricity_fee'] as int?,
      gasFee: json['gas_fee'] as int?,
      othersFee: json['others_fee'] as int?,
      address: json['address'] as String?,
      notice: json['notice'] as String?,
      status: json['status'] as String?,
      canBook: json['can_book'] as String?,
      deviceToken: json['device_token'] as String?,
    );

Map<String, dynamic> _$$_OwnerHouseModelToJson(_$_OwnerHouseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_name': instance.ownerName,
      'owner_number': instance.ownerNumber,
      'owner_id': instance.ownerId,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'image4': instance.image4,
      'video': instance.video,
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
      'can_book': instance.canBook,
      'device_token': instance.deviceToken,
    };
