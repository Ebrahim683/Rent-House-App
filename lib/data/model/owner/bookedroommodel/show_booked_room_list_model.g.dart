// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_booked_room_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShowBookedRoomListModel _$$_ShowBookedRoomListModelFromJson(
        Map<String, dynamic> json) =>
    _$_ShowBookedRoomListModel(
      status: json['status'] as String?,
      bookedRoomModel: (json['message'] as List<dynamic>?)
          ?.map((e) => ShowBookedRoomModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ShowBookedRoomListModelToJson(
        _$_ShowBookedRoomListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.bookedRoomModel,
    };

_$_ShowBookedRoomModel _$$_ShowBookedRoomModelFromJson(
        Map<String, dynamic> json) =>
    _$_ShowBookedRoomModel(
      id: json['id'] as int?,
      ownerId: json['owner_id'] as int?,
      houseId: json['house_id'] as int?,
      userId: json['user_id'] as int?,
      ownerName: json['owner_name'] as String?,
      ownerNumber: json['owner_number'] as String?,
      userName: json['user_name'] as String?,
      userNumber: json['user_number'] as String?,
      image: json['image'] as String?,
      category: json['category'] as String?,
      fee: json['fee'] as String?,
      quantity: json['quantity'] as String?,
      advanceFee: json['advance_fee'] as String?,
      electricityFee: json['electricity_fee'] as String?,
      gas_fee: json['gas_fee'] as String?,
      othersFee: json['others_fee'] as String?,
      address: json['address'] as String?,
      notice: json['notice'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_ShowBookedRoomModelToJson(
        _$_ShowBookedRoomModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'house_id': instance.houseId,
      'user_id': instance.userId,
      'owner_name': instance.ownerName,
      'owner_number': instance.ownerNumber,
      'user_name': instance.userName,
      'user_number': instance.userNumber,
      'image': instance.image,
      'category': instance.category,
      'fee': instance.fee,
      'quantity': instance.quantity,
      'advance_fee': instance.advanceFee,
      'electricity_fee': instance.electricityFee,
      'gas_fee': instance.gas_fee,
      'others_fee': instance.othersFee,
      'address': instance.address,
      'notice': instance.notice,
      'status': instance.status,
    };
