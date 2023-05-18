import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_model.g.dart';
part 'common_model.freezed.dart';

@freezed
class CommonModel with _$CommonModel {
  const factory CommonModel({
    // ignore:  
    @JsonKey(name: 'status') String? status,
    // ignore:  
    @JsonKey(name: 'message') String? message,
  }) = _CommonModel;
  factory CommonModel.fromJson(Map<String, dynamic> json) =>
      _$CommonModelFromJson(json);
}
