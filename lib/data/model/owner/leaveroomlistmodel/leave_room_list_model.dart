import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_room_list_model.g.dart';
part 'leave_room_list_model.freezed.dart';

@freezed
class LeaveRoomListModel with _$LeaveRoomListModel {
  const factory LeaveRoomListModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<LeaveRoomModel>? leaveRoomModel,
  }) = _LeaveRoomListModel;
  factory LeaveRoomListModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveRoomListModelFromJson(json);
}

@freezed
class LeaveRoomModel with _$LeaveRoomModel {
  const factory LeaveRoomModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'request_id') int? requestId,
    @JsonKey(name: 'house_id') int? houseId,
    @JsonKey(name: 'owner_name') String? ownerName,
    @JsonKey(name: 'owner_number') String? ownerNumber,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'user_number') String? userNumber,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'fee') String? fee,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'time') String? time,
  }) = _LeaveRoomModel;
  factory LeaveRoomModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveRoomModelFromJson(json);
}
