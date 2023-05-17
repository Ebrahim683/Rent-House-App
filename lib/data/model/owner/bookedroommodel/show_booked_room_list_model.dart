import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_booked_room_list_model.g.dart';
part 'show_booked_room_list_model.freezed.dart';

@freezed
class ShowBookedRoomListModel with _$ShowBookedRoomListModel {
  const factory ShowBookedRoomListModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'status') String? status,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'message') String? message,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'data') List<ShowBookedRoomModel>? bookedRoomModel,
  }) = _ShowBookedRoomListModel;
  factory ShowBookedRoomListModel.fromJson(Map<String, dynamic> json) =>
      _$ShowBookedRoomListModelFromJson(json);
}

@freezed
class ShowBookedRoomModel with _$ShowBookedRoomModel {
  const factory ShowBookedRoomModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'id') int? id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'owner_id') int? ownerId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'house_id') int? houseId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'user_id') int? userId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'owner_name') String? ownerName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'owner_number') String? ownerNumber,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'user_name') String? userName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'user_number') String? userNumber,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image') String? image,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'category') String? category,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'fee') String? fee,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'quantity') String? quantity,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'advance_fee') String? advanceFee,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'electricity_fee') String? electricityFee,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'gas_fee') String? gas_fee,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'others_fee') String? othersFee,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'address') String? address,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'notice') String? notice,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'status') String? status,
  }) = _ShowBookedRoomModel;
  factory ShowBookedRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ShowBookedRoomModelFromJson(json);
}
