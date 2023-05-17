import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_room_list_model.g.dart';
part 'leave_room_list_model.freezed.dart';

@freezed
class LeaveRoomListModel with _$LeaveRoomListModel {
  const factory LeaveRoomListModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'status') String? status,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'message') String? message,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'data') List<LeaveRoomModel>? leaveRoomModel,
  }) = _LeaveRoomListModel;
  factory LeaveRoomListModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveRoomListModelFromJson(json);
}

@freezed
class LeaveRoomModel with _$LeaveRoomModel {
  const factory LeaveRoomModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'id') int? id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'request_id') int? requestId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'house_id') int? houseId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'owner_name') String? ownerName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'owner_number') String? ownerNumber,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'user_name') String? userName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'user_number') String? userNumber,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'category') String? category,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'fee') String? fee,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'address') String? address,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'time') String? time,
  }) = _LeaveRoomModel;
  factory LeaveRoomModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveRoomModelFromJson(json);
}
