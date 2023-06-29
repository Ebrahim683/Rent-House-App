import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model_list.g.dart';
part 'profile_model_list.freezed.dart';

@freezed
class ProfileModelList with _$ProfileModelList {
  const factory ProfileModelList({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<ProfileModel>? profileModel,
  }) = _ProfileModelList;
  factory ProfileModelList.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelListFromJson(json);
}

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'profile_pic') String? profilePic,
    @JsonKey(name: 'device_token') String? deviceToken,
  }) = _ProfileModel;
  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
