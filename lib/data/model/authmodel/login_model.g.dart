// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginModel _$$_LoginModelFromJson(Map<String, dynamic> json) =>
    _$_LoginModel(
      status: json['status'] as String?,
      message: (json['message'] as List<dynamic>?)
          ?.map((e) => LoginDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LoginModelToJson(_$_LoginModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$_LoginDetails _$$_LoginDetailsFromJson(Map<String, dynamic> json) =>
    _$_LoginDetails(
      phoneNumber: json['phone_number'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_LoginDetailsToJson(_$_LoginDetails instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'name': instance.name,
    };
