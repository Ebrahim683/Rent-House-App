// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_room_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeaveRoomListModel _$LeaveRoomListModelFromJson(Map<String, dynamic> json) {
  return _LeaveRoomListModel.fromJson(json);
}

/// @nodoc
mixin _$LeaveRoomListModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<LeaveRoomModel>? get leaveRoomModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveRoomListModelCopyWith<LeaveRoomListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveRoomListModelCopyWith<$Res> {
  factory $LeaveRoomListModelCopyWith(
          LeaveRoomListModel value, $Res Function(LeaveRoomListModel) then) =
      _$LeaveRoomListModelCopyWithImpl<$Res, LeaveRoomListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<LeaveRoomModel>? leaveRoomModel});
}

/// @nodoc
class _$LeaveRoomListModelCopyWithImpl<$Res, $Val extends LeaveRoomListModel>
    implements $LeaveRoomListModelCopyWith<$Res> {
  _$LeaveRoomListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? leaveRoomModel = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      leaveRoomModel: freezed == leaveRoomModel
          ? _value.leaveRoomModel
          : leaveRoomModel // ignore: cast_nullable_to_non_nullable
              as List<LeaveRoomModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeaveRoomListModelCopyWith<$Res>
    implements $LeaveRoomListModelCopyWith<$Res> {
  factory _$$_LeaveRoomListModelCopyWith(_$_LeaveRoomListModel value,
          $Res Function(_$_LeaveRoomListModel) then) =
      __$$_LeaveRoomListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<LeaveRoomModel>? leaveRoomModel});
}

/// @nodoc
class __$$_LeaveRoomListModelCopyWithImpl<$Res>
    extends _$LeaveRoomListModelCopyWithImpl<$Res, _$_LeaveRoomListModel>
    implements _$$_LeaveRoomListModelCopyWith<$Res> {
  __$$_LeaveRoomListModelCopyWithImpl(
      _$_LeaveRoomListModel _value, $Res Function(_$_LeaveRoomListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? leaveRoomModel = freezed,
  }) {
    return _then(_$_LeaveRoomListModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      leaveRoomModel: freezed == leaveRoomModel
          ? _value._leaveRoomModel
          : leaveRoomModel // ignore: cast_nullable_to_non_nullable
              as List<LeaveRoomModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeaveRoomListModel implements _LeaveRoomListModel {
  const _$_LeaveRoomListModel(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<LeaveRoomModel>? leaveRoomModel})
      : _leaveRoomModel = leaveRoomModel;

  factory _$_LeaveRoomListModel.fromJson(Map<String, dynamic> json) =>
      _$$_LeaveRoomListModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<LeaveRoomModel>? _leaveRoomModel;
  @override
  @JsonKey(name: 'data')
  List<LeaveRoomModel>? get leaveRoomModel {
    final value = _leaveRoomModel;
    if (value == null) return null;
    if (_leaveRoomModel is EqualUnmodifiableListView) return _leaveRoomModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LeaveRoomListModel(status: $status, message: $message, leaveRoomModel: $leaveRoomModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaveRoomListModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._leaveRoomModel, _leaveRoomModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_leaveRoomModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaveRoomListModelCopyWith<_$_LeaveRoomListModel> get copyWith =>
      __$$_LeaveRoomListModelCopyWithImpl<_$_LeaveRoomListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaveRoomListModelToJson(
      this,
    );
  }
}

abstract class _LeaveRoomListModel implements LeaveRoomListModel {
  const factory _LeaveRoomListModel(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<LeaveRoomModel>? leaveRoomModel}) =
      _$_LeaveRoomListModel;

  factory _LeaveRoomListModel.fromJson(Map<String, dynamic> json) =
      _$_LeaveRoomListModel.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<LeaveRoomModel>? get leaveRoomModel;
  @override
  @JsonKey(ignore: true)
  _$$_LeaveRoomListModelCopyWith<_$_LeaveRoomListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveRoomModel _$LeaveRoomModelFromJson(Map<String, dynamic> json) {
  return _LeaveRoomModel.fromJson(json);
}

/// @nodoc
mixin _$LeaveRoomModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_id')
  int? get requestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_id')
  int? get houseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_name')
  String? get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_number')
  String? get ownerNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_number')
  String? get userNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'fee')
  int? get fee => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  String? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveRoomModelCopyWith<LeaveRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveRoomModelCopyWith<$Res> {
  factory $LeaveRoomModelCopyWith(
          LeaveRoomModel value, $Res Function(LeaveRoomModel) then) =
      _$LeaveRoomModelCopyWithImpl<$Res, LeaveRoomModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'request_id') int? requestId,
      @JsonKey(name: 'house_id') int? houseId,
      @JsonKey(name: 'owner_name') String? ownerName,
      @JsonKey(name: 'owner_number') String? ownerNumber,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_number') String? userNumber,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'fee') int? fee,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'time') String? time});
}

/// @nodoc
class _$LeaveRoomModelCopyWithImpl<$Res, $Val extends LeaveRoomModel>
    implements $LeaveRoomModelCopyWith<$Res> {
  _$LeaveRoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? requestId = freezed,
    Object? houseId = freezed,
    Object? ownerName = freezed,
    Object? ownerNumber = freezed,
    Object? userName = freezed,
    Object? userNumber = freezed,
    Object? category = freezed,
    Object? fee = freezed,
    Object? address = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int?,
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerNumber: freezed == ownerNumber
          ? _value.ownerNumber
          : ownerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userNumber: freezed == userNumber
          ? _value.userNumber
          : userNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeaveRoomModelCopyWith<$Res>
    implements $LeaveRoomModelCopyWith<$Res> {
  factory _$$_LeaveRoomModelCopyWith(
          _$_LeaveRoomModel value, $Res Function(_$_LeaveRoomModel) then) =
      __$$_LeaveRoomModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'request_id') int? requestId,
      @JsonKey(name: 'house_id') int? houseId,
      @JsonKey(name: 'owner_name') String? ownerName,
      @JsonKey(name: 'owner_number') String? ownerNumber,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_number') String? userNumber,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'fee') int? fee,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'time') String? time});
}

/// @nodoc
class __$$_LeaveRoomModelCopyWithImpl<$Res>
    extends _$LeaveRoomModelCopyWithImpl<$Res, _$_LeaveRoomModel>
    implements _$$_LeaveRoomModelCopyWith<$Res> {
  __$$_LeaveRoomModelCopyWithImpl(
      _$_LeaveRoomModel _value, $Res Function(_$_LeaveRoomModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? requestId = freezed,
    Object? houseId = freezed,
    Object? ownerName = freezed,
    Object? ownerNumber = freezed,
    Object? userName = freezed,
    Object? userNumber = freezed,
    Object? category = freezed,
    Object? fee = freezed,
    Object? address = freezed,
    Object? time = freezed,
  }) {
    return _then(_$_LeaveRoomModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int?,
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerNumber: freezed == ownerNumber
          ? _value.ownerNumber
          : ownerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userNumber: freezed == userNumber
          ? _value.userNumber
          : userNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeaveRoomModel implements _LeaveRoomModel {
  const _$_LeaveRoomModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'request_id') this.requestId,
      @JsonKey(name: 'house_id') this.houseId,
      @JsonKey(name: 'owner_name') this.ownerName,
      @JsonKey(name: 'owner_number') this.ownerNumber,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'user_number') this.userNumber,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'fee') this.fee,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'time') this.time});

  factory _$_LeaveRoomModel.fromJson(Map<String, dynamic> json) =>
      _$$_LeaveRoomModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'request_id')
  final int? requestId;
  @override
  @JsonKey(name: 'house_id')
  final int? houseId;
  @override
  @JsonKey(name: 'owner_name')
  final String? ownerName;
  @override
  @JsonKey(name: 'owner_number')
  final String? ownerNumber;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'user_number')
  final String? userNumber;
  @override
  @JsonKey(name: 'category')
  final String? category;
  @override
  @JsonKey(name: 'fee')
  final int? fee;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'time')
  final String? time;

  @override
  String toString() {
    return 'LeaveRoomModel(id: $id, requestId: $requestId, houseId: $houseId, ownerName: $ownerName, ownerNumber: $ownerNumber, userName: $userName, userNumber: $userNumber, category: $category, fee: $fee, address: $address, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaveRoomModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.houseId, houseId) || other.houseId == houseId) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerNumber, ownerNumber) ||
                other.ownerNumber == ownerNumber) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userNumber, userNumber) ||
                other.userNumber == userNumber) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      requestId,
      houseId,
      ownerName,
      ownerNumber,
      userName,
      userNumber,
      category,
      fee,
      address,
      time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaveRoomModelCopyWith<_$_LeaveRoomModel> get copyWith =>
      __$$_LeaveRoomModelCopyWithImpl<_$_LeaveRoomModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaveRoomModelToJson(
      this,
    );
  }
}

abstract class _LeaveRoomModel implements LeaveRoomModel {
  const factory _LeaveRoomModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'request_id') final int? requestId,
      @JsonKey(name: 'house_id') final int? houseId,
      @JsonKey(name: 'owner_name') final String? ownerName,
      @JsonKey(name: 'owner_number') final String? ownerNumber,
      @JsonKey(name: 'user_name') final String? userName,
      @JsonKey(name: 'user_number') final String? userNumber,
      @JsonKey(name: 'category') final String? category,
      @JsonKey(name: 'fee') final int? fee,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'time') final String? time}) = _$_LeaveRoomModel;

  factory _LeaveRoomModel.fromJson(Map<String, dynamic> json) =
      _$_LeaveRoomModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'request_id')
  int? get requestId;
  @override
  @JsonKey(name: 'house_id')
  int? get houseId;
  @override
  @JsonKey(name: 'owner_name')
  String? get ownerName;
  @override
  @JsonKey(name: 'owner_number')
  String? get ownerNumber;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'user_number')
  String? get userNumber;
  @override
  @JsonKey(name: 'category')
  String? get category;
  @override
  @JsonKey(name: 'fee')
  int? get fee;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'time')
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$_LeaveRoomModelCopyWith<_$_LeaveRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}
