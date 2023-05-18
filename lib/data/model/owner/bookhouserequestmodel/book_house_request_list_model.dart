import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_house_request_list_model.g.dart';
part 'book_house_request_list_model.freezed.dart';

@freezed
class BookHouseRequestListModel with _$BookHouseRequestListModel {
  const factory BookHouseRequestListModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<BookHouseRequestModel>? bookHouseRequestModel,
  }) = _BookHouseRequestListModel;
  factory BookHouseRequestListModel.fromJson(Map<String, dynamic> json) =>
      _$BookHouseRequestListModelFromJson(json);
}

@freezed
class BookHouseRequestModel with _$BookHouseRequestModel {
  const factory BookHouseRequestModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'user_number') String? userNumber,
    @JsonKey(name: 'house_id') int? houseId,
    @JsonKey(name: 'time') String? time,
  }) = _BookHouseRequestModel;
  factory BookHouseRequestModel.fromJson(Map<String, dynamic> json) =>
      _$BookHouseRequestModelFromJson(json);
}
