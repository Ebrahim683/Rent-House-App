import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.g.dart';
part 'login_model.freezed.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<LoginDetails>? data,
  }) = _LoginModel;
  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

@freezed
class LoginDetails with _$LoginDetails {
  const factory LoginDetails({
  
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'role') String? role,
  }) = _LoginDetails;
  factory LoginDetails.fromJson(Map<String, dynamic> json) =>
      _$LoginDetailsFromJson(json);
}
