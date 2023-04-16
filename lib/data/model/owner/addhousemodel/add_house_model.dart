import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_house_model.g.dart';
part 'add_house_model.freezed.dart';

@freezed
class AddHouseModel with _$AddHouseModel {
  const factory AddHouseModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
  }) = _AddHouseModel;
  factory AddHouseModel.fromJson(Map<String, dynamic> json) =>
      _$AddHouseModelFromJson(json);
}
