// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_house_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetHouseListModel _$$_GetHouseListModelFromJson(Map<String, dynamic> json) =>
    _$_GetHouseListModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      getHouseModel: (json['data'] as List<dynamic>?)
          ?.map((e) => GetHouseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetHouseListModelToJson(
        _$_GetHouseListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.getHouseModel,
    };
