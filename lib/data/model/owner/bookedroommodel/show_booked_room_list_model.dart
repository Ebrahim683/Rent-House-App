import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_booked_room_list_model.g.dart';
part 'show_booked_room_list_model.freezed.dart';

@freezed
class ShowBookedRoomListModel with _$ShowBookedRoomListModel {
  const factory ShowBookedRoomListModel({
    // ignore:
    @JsonKey(name: 'status') String? status,
    // ignore:
    @JsonKey(name: 'message') String? message,
    // ignore:
    @JsonKey(name: 'data') List<ShowBookedRoomModel>? bookedRoomModel,
  }) = _ShowBookedRoomListModel;
  factory ShowBookedRoomListModel.fromJson(Map<String, dynamic> json) =>
      _$ShowBookedRoomListModelFromJson(json);
}

@freezed
class ShowBookedRoomModel with _$ShowBookedRoomModel {
  const factory ShowBookedRoomModel({
    // ignore:
    @JsonKey(name: 'id') int? id,
    // ignore:
    @JsonKey(name: 'owner_id') int? ownerId,
    // ignore:
    @JsonKey(name: 'house_id') int? houseId,
    // ignore:
    @JsonKey(name: 'user_id') int? userId,
    // ignore:
    @JsonKey(name: 'owner_name') String? ownerName,
    // ignore:
    @JsonKey(name: 'owner_number') String? ownerNumber,
    // ignore:
    @JsonKey(name: 'user_name') String? userName,
    // ignore:
    @JsonKey(name: 'user_number') String? userNumber,
    // ignore:
    @JsonKey(name: 'image') String? image,
    // ignore:
    @JsonKey(name: 'category') String? category,
    // ignore:
    @JsonKey(name: 'fee') String? fee,
    // ignore:
    @JsonKey(name: 'quantity') String? quantity,
    // ignore:
    @JsonKey(name: 'advance_fee') String? advanceFee,
    // ignore:
    @JsonKey(name: 'electricity_fee') String? electricityFee,
    // ignore:
    @JsonKey(name: 'gas_fee') String? gas_fee,
    // ignore:
    @JsonKey(name: 'others_fee') String? othersFee,
    // ignore:
    @JsonKey(name: 'address') String? address,
    // ignore:
    @JsonKey(name: 'notice') String? notice,
    // ignore:
    @JsonKey(name: 'status') String? status,
  }) = _ShowBookedRoomModel;
  factory ShowBookedRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ShowBookedRoomModelFromJson(json);
}
