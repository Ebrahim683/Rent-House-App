// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HouseListModel _$$_HouseListModelFromJson(Map<String, dynamic> json) =>
    _$_HouseListModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      houseModel: (json['data'] as List<dynamic>?)
          ?.map((e) => HouseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HouseListModelToJson(_$_HouseListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.houseModel,
    };

_$_HouseModel _$$_HouseModelFromJson(Map<String, dynamic> json) =>
    _$_HouseModel(
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
      fee: json['fee'] as String?,
      quantity: json['quantity'] as String?,
      advanceFee: json['advance_fee'] as String?,
      electricityFee: json['electricity_fee'] as String?,
      gasFee: json['gas_fee'] as String?,
      othersFee: json['others_fee'] as String?,
      address: json['address'] as String?,
      notice: json['notice'] as String?,
      status: json['status'] as String?,
      canBook: json['can_book'] as String?,
      houseId: json['house_id'] as int?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$_HouseModelToJson(_$_HouseModel instance) =>
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
      'house_id': instance.houseId,
      'time': instance.time,
    };
