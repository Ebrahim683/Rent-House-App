import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.g.dart';
part 'auth_model.freezed.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message}) = _AuthModel;
  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
