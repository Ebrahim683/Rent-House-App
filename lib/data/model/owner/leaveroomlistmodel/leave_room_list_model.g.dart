// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_room_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LeaveRoomListModel _$$_LeaveRoomListModelFromJson(
        Map<String, dynamic> json) =>
    _$_LeaveRoomListModel(
      status: json['status'] as String?,
      leaveRoomModel: (json['message'] as List<dynamic>?)
          ?.map((e) => LeaveRoomModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LeaveRoomListModelToJson(
        _$_LeaveRoomListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.leaveRoomModel,
    };

_$_LeaveRoomModel _$$_LeaveRoomModelFromJson(Map<String, dynamic> json) =>
    _$_LeaveRoomModel(
      id: json['id'] as int?,
      requestId: json['request_id'] as int?,
      houseId: json['house_id'] as int?,
      ownerName: json['owner_name'] as String?,
      ownerNumber: json['owner_number'] as String?,
      userName: json['user_name'] as String?,
      userNumber: json['user_number'] as String?,
      category: json['category'] as String?,
      fee: json['fee'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$_LeaveRoomModelToJson(_$_LeaveRoomModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'request_id': instance.requestId,
      'house_id': instance.houseId,
      'owner_name': instance.ownerName,
      'owner_number': instance.ownerNumber,
      'user_name': instance.userName,
      'user_number': instance.userNumber,
      'category': instance.category,
      'fee': instance.fee,
      'address': instance.address,
    };
