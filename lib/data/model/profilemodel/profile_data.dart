import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_data.g.dart';
part 'profile_data.freezed.dart';

@freezed
class ProfileData with _$ProfileData {
  const factory ProfileData(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'role') String? role}) = _ProfileData;
  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}
