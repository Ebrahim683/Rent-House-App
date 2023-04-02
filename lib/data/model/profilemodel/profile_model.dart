import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rent_house/data/model/profilemodel/profile_data.dart';

part 'profile_model.g.dart';
part 'profile_model.freezed.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') List<ProfileData>? profileData,
  }) = _ProfileModel;
  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
