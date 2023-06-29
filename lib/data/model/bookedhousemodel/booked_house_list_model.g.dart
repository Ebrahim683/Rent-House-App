// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booked_house_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookedHouseListModel _$$_BookedHouseListModelFromJson(
        Map<String, dynamic> json) =>
    _$_BookedHouseListModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      bookedHouseModel: (json['data'] as List<dynamic>?)
          ?.map((e) => BookedHouseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookedHouseListModelToJson(
        _$_BookedHouseListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.bookedHouseModel,
    };

_$_BookedHouseModel _$$_BookedHouseModelFromJson(Map<String, dynamic> json) =>
    _$_BookedHouseModel(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      payment: json['payment'] as String?,
      ownerId: json['owner_id'] as int?,
      ownerName: json['owner_name'] as String?,
      ownerNumber: json['owner_number'] as String?,
      image: json['image'] as String?,
      category: json['category'] as String?,
      fee: json['fee'] as int?,
      quantity: json['quantity'] as String?,
      advanceFee: json['advance_fee'] as int?,
      electricityFee: json['electricity_fee'] as int?,
      gasFee: json['gas_fee'] as int?,
      othersFee: json['others_fee'] as int?,
      address: json['address'] as String?,
      notice: json['notice'] as String?,
      deviceToken: json['device_token'] as String?,
    );

Map<String, dynamic> _$$_BookedHouseModelToJson(_$_BookedHouseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'payment': instance.payment,
      'owner_id': instance.ownerId,
      'owner_name': instance.ownerName,
      'owner_number': instance.ownerNumber,
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
      'device_token': instance.deviceToken,
    };
