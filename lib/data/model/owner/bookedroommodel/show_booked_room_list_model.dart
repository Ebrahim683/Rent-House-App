import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_booked_room_list_model.g.dart';
part 'show_booked_room_list_model.freezed.dart';

@freezed
class ShowBookedRoomListModel with _$ShowBookedRoomListModel {
  const factory ShowBookedRoomListModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<ShowBookedRoomModel>? bookedRoomModel,
  }) = _ShowBookedRoomListModel;
  factory ShowBookedRoomListModel.fromJson(Map<String, dynamic> json) =>
      _$ShowBookedRoomListModelFromJson(json);
}

@freezed
class ShowBookedRoomModel with _$ShowBookedRoomModel {
  const factory ShowBookedRoomModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'owner_id') int? ownerId,
    @JsonKey(name: 'house_id') int? houseId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'owner_name') String? ownerName,
    @JsonKey(name: 'owner_number') String? ownerNumber,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'user_number') String? userNumber,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'fee') String? fee,
    @JsonKey(name: 'quantity') String? quantity,
    @JsonKey(name: 'advance_fee') String? advanceFee,
    @JsonKey(name: 'electricity_fee') String? electricityFee,
    @JsonKey(name: 'gas_fee') String? gas_fee,
    @JsonKey(name: 'others_fee') String? othersFee,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'notice') String? notice,
    @JsonKey(name: 'status') String? status,
  }) = _ShowBookedRoomModel;
  factory ShowBookedRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ShowBookedRoomModelFromJson(json);
}
