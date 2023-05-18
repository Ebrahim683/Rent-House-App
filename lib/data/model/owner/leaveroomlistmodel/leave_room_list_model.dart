import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_room_list_model.g.dart';
part 'leave_room_list_model.freezed.dart';

@freezed
class LeaveRoomListModel with _$LeaveRoomListModel {
  const factory LeaveRoomListModel({
    // ignore:  
    @JsonKey(name: 'status') String? status,
    // ignore:  
    @JsonKey(name: 'message') String? message,
    // ignore:  
    @JsonKey(name: 'data') List<LeaveRoomModel>? leaveRoomModel,
  }) = _LeaveRoomListModel;
  factory LeaveRoomListModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveRoomListModelFromJson(json);
}

@freezed
class LeaveRoomModel with _$LeaveRoomModel {
  const factory LeaveRoomModel({
    // ignore:  
    @JsonKey(name: 'id') int? id,
    // ignore:  
    @JsonKey(name: 'request_id') int? requestId,
    // ignore:  
    @JsonKey(name: 'house_id') int? houseId,
    // ignore:  
    @JsonKey(name: 'owner_name') String? ownerName,
    // ignore:  
    @JsonKey(name: 'owner_number') String? ownerNumber,
    // ignore:  
    @JsonKey(name: 'user_name') String? userName,
    // ignore:  
    @JsonKey(name: 'user_number') String? userNumber,
    // ignore:  
    @JsonKey(name: 'category') String? category,
    // ignore:  
    @JsonKey(name: 'fee') String? fee,
    // ignore:  
    @JsonKey(name: 'address') String? address,
    // ignore:  
    @JsonKey(name: 'time') String? time,
  }) = _LeaveRoomModel;
  factory LeaveRoomModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveRoomModelFromJson(json);
}
