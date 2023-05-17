import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.g.dart';
part 'login_model.freezed.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'status') String? status,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'message') String? message,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'data') List<LoginDetails>? data,
  }) = _LoginModel;
  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

@freezed
class LoginDetails with _$LoginDetails {
  const factory LoginDetails({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'phone_number') String? phoneNumber,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'name') String? name,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'role') String? role,
  }) = _LoginDetails;
  factory LoginDetails.fromJson(Map<String, dynamic> json) =>
      _$LoginDetailsFromJson(json);
}
