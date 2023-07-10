// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginModel _$$_LoginModelFromJson(Map<String, dynamic> json) =>
    _$_LoginModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LoginDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LoginModelToJson(_$_LoginModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_LoginDetails _$$_LoginDetailsFromJson(Map<String, dynamic> json) =>
    _$_LoginDetails(
      phoneNumber: json['phone_number'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      profilePic: json['profile_pic'] as String?,
    );

Map<String, dynamic> _$$_LoginDetailsToJson(_$_LoginDetails instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'profile_pic': instance.profilePic,
    };
