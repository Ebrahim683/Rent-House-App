// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_house_request_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookHouseRequestListModel _$$_BookHouseRequestListModelFromJson(
        Map<String, dynamic> json) =>
    _$_BookHouseRequestListModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      bookHouseRequestModel: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => BookHouseRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookHouseRequestListModelToJson(
        _$_BookHouseRequestListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.bookHouseRequestModel,
    };

_$_BookHouseRequestModel _$$_BookHouseRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_BookHouseRequestModel(
      id: json['id'] as int?,
      userName: json['user_name'] as String?,
      userNumber: json['user_number'] as String?,
      houseId: json['house_id'] as int?,
      time: json['time'] as String?,
      deviceToken: json['device_token'] as String?,
    );

Map<String, dynamic> _$$_BookHouseRequestModelToJson(
        _$_BookHouseRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_name': instance.userName,
      'user_number': instance.userNumber,
      'house_id': instance.houseId,
      'time': instance.time,
      'device_token': instance.deviceToken,
    };
