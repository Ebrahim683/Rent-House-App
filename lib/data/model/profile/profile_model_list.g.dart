// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModelList _$$_ProfileModelListFromJson(Map<String, dynamic> json) =>
    _$_ProfileModelList(
      status: json['status'] as String?,
      message: json['message'] as String?,
      profileModel: (json['data'] as List<dynamic>?)
          ?.map((e) => ProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProfileModelListToJson(_$_ProfileModelList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.profileModel,
    };

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      profilePic: json['profile_pic'] as String?,
      deviceToken: json['device_token'] as String?,
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'role': instance.role,
      'profile_pic': instance.profilePic,
      'device_token': instance.deviceToken,
    };
