// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileData _$$_ProfileDataFromJson(Map<String, dynamic> json) =>
    _$_ProfileData(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$_ProfileDataToJson(_$_ProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'role': instance.role,
    };
