// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_booked_room_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShowBookedRoomListModel _$ShowBookedRoomListModelFromJson(
    Map<String, dynamic> json) {
  return _ShowBookedRoomListModel.fromJson(json);
}

/// @nodoc
mixin _$ShowBookedRoomListModel {
 
  @JsonKey(name: 'status')
  String? get status =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'message')
  String? get message =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'data')
  List<ShowBookedRoomModel>? get bookedRoomModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowBookedRoomListModelCopyWith<ShowBookedRoomListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowBookedRoomListModelCopyWith<$Res> {
  factory $ShowBookedRoomListModelCopyWith(ShowBookedRoomListModel value,
          $Res Function(ShowBookedRoomListModel) then) =
      _$ShowBookedRoomListModelCopyWithImpl<$Res, ShowBookedRoomListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<ShowBookedRoomModel>? bookedRoomModel});
}

/// @nodoc
class _$ShowBookedRoomListModelCopyWithImpl<$Res,
        $Val extends ShowBookedRoomListModel>
    implements $ShowBookedRoomListModelCopyWith<$Res> {
  _$ShowBookedRoomListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? bookedRoomModel = freezed,
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
      bookedRoomModel: freezed == bookedRoomModel
          ? _value.bookedRoomModel
          : bookedRoomModel // ignore: cast_nullable_to_non_nullable
              as List<ShowBookedRoomModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShowBookedRoomListModelCopyWith<$Res>
    implements $ShowBookedRoomListModelCopyWith<$Res> {
  factory _$$_ShowBookedRoomListModelCopyWith(_$_ShowBookedRoomListModel value,
          $Res Function(_$_ShowBookedRoomListModel) then) =
      __$$_ShowBookedRoomListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<ShowBookedRoomModel>? bookedRoomModel});
}

/// @nodoc
class __$$_ShowBookedRoomListModelCopyWithImpl<$Res>
    extends _$ShowBookedRoomListModelCopyWithImpl<$Res,
        _$_ShowBookedRoomListModel>
    implements _$$_ShowBookedRoomListModelCopyWith<$Res> {
  __$$_ShowBookedRoomListModelCopyWithImpl(_$_ShowBookedRoomListModel _value,
      $Res Function(_$_ShowBookedRoomListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? bookedRoomModel = freezed,
  }) {
    return _then(_$_ShowBookedRoomListModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedRoomModel: freezed == bookedRoomModel
          ? _value._bookedRoomModel
          : bookedRoomModel // ignore: cast_nullable_to_non_nullable
              as List<ShowBookedRoomModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowBookedRoomListModel implements _ShowBookedRoomListModel {
  const _$_ShowBookedRoomListModel(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<ShowBookedRoomModel>? bookedRoomModel})
      : _bookedRoomModel = bookedRoomModel;

  factory _$_ShowBookedRoomListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShowBookedRoomListModelFromJson(json);

 
  @override
  @JsonKey(name: 'status')
  final String? status;
 
  @override
  @JsonKey(name: 'message')
  final String? message;
 
  final List<ShowBookedRoomModel>? _bookedRoomModel;
 
  @override
  @JsonKey(name: 'data')
  List<ShowBookedRoomModel>? get bookedRoomModel {
    final value = _bookedRoomModel;
    if (value == null) return null;
    if (_bookedRoomModel is EqualUnmodifiableListView) return _bookedRoomModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShowBookedRoomListModel(status: $status, message: $message, bookedRoomModel: $bookedRoomModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowBookedRoomListModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._bookedRoomModel, _bookedRoomModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_bookedRoomModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowBookedRoomListModelCopyWith<_$_ShowBookedRoomListModel>
      get copyWith =>
          __$$_ShowBookedRoomListModelCopyWithImpl<_$_ShowBookedRoomListModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowBookedRoomListModelToJson(
      this,
    );
  }
}

abstract class _ShowBookedRoomListModel implements ShowBookedRoomListModel {
  const factory _ShowBookedRoomListModel(
          {@JsonKey(name: 'status')
              final String? status,
          @JsonKey(name: 'message')
              final String? message,
          @JsonKey(name: 'data')
              final List<ShowBookedRoomModel>? bookedRoomModel}) =
      _$_ShowBookedRoomListModel;

  factory _ShowBookedRoomListModel.fromJson(Map<String, dynamic> json) =
      _$_ShowBookedRoomListModel.fromJson;

  @override  
  @JsonKey(name: 'status')
  String? get status;
  @override  
  @JsonKey(name: 'message')
  String? get message;
  @override  
  @JsonKey(name: 'data')
  List<ShowBookedRoomModel>? get bookedRoomModel;
  @override
  @JsonKey(ignore: true)
  _$$_ShowBookedRoomListModelCopyWith<_$_ShowBookedRoomListModel>
      get copyWith => throw _privateConstructorUsedError;
}

ShowBookedRoomModel _$ShowBookedRoomModelFromJson(Map<String, dynamic> json) {
  return _ShowBookedRoomModel.fromJson(json);
}

/// @nodoc
mixin _$ShowBookedRoomModel {
 
  @JsonKey(name: 'id')
  int? get id =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'owner_id')
  int? get ownerId =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'house_id')
  int? get houseId =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'user_id')
  int? get userId =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'owner_name')
  String? get ownerName =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'owner_number')
  String? get ownerNumber =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'user_name')
  String? get userName =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'user_number')
  String? get userNumber =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'image')
  String? get image =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'category')
  String? get category =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'fee')
  String? get fee =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'quantity')
  String? get quantity =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'advance_fee')
  String? get advanceFee =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'electricity_fee')
  String? get electricityFee =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'gas_fee')
  String? get gas_fee =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'others_fee')
  String? get othersFee =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'address')
  String? get address =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'notice')
  String? get notice =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowBookedRoomModelCopyWith<ShowBookedRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowBookedRoomModelCopyWith<$Res> {
  factory $ShowBookedRoomModelCopyWith(
          ShowBookedRoomModel value, $Res Function(ShowBookedRoomModel) then) =
      _$ShowBookedRoomModelCopyWithImpl<$Res, ShowBookedRoomModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
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
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class _$ShowBookedRoomModelCopyWithImpl<$Res, $Val extends ShowBookedRoomModel>
    implements $ShowBookedRoomModelCopyWith<$Res> {
  _$ShowBookedRoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? houseId = freezed,
    Object? userId = freezed,
    Object? ownerName = freezed,
    Object? ownerNumber = freezed,
    Object? userName = freezed,
    Object? userNumber = freezed,
    Object? image = freezed,
    Object? category = freezed,
    Object? fee = freezed,
    Object? quantity = freezed,
    Object? advanceFee = freezed,
    Object? electricityFee = freezed,
    Object? gas_fee = freezed,
    Object? othersFee = freezed,
    Object? address = freezed,
    Object? notice = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      advanceFee: freezed == advanceFee
          ? _value.advanceFee
          : advanceFee // ignore: cast_nullable_to_non_nullable
              as String?,
      electricityFee: freezed == electricityFee
          ? _value.electricityFee
          : electricityFee // ignore: cast_nullable_to_non_nullable
              as String?,
      gas_fee: freezed == gas_fee
          ? _value.gas_fee
          : gas_fee // ignore: cast_nullable_to_non_nullable
              as String?,
      othersFee: freezed == othersFee
          ? _value.othersFee
          : othersFee // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShowBookedRoomModelCopyWith<$Res>
    implements $ShowBookedRoomModelCopyWith<$Res> {
  factory _$$_ShowBookedRoomModelCopyWith(_$_ShowBookedRoomModel value,
          $Res Function(_$_ShowBookedRoomModel) then) =
      __$$_ShowBookedRoomModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
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
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class __$$_ShowBookedRoomModelCopyWithImpl<$Res>
    extends _$ShowBookedRoomModelCopyWithImpl<$Res, _$_ShowBookedRoomModel>
    implements _$$_ShowBookedRoomModelCopyWith<$Res> {
  __$$_ShowBookedRoomModelCopyWithImpl(_$_ShowBookedRoomModel _value,
      $Res Function(_$_ShowBookedRoomModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? houseId = freezed,
    Object? userId = freezed,
    Object? ownerName = freezed,
    Object? ownerNumber = freezed,
    Object? userName = freezed,
    Object? userNumber = freezed,
    Object? image = freezed,
    Object? category = freezed,
    Object? fee = freezed,
    Object? quantity = freezed,
    Object? advanceFee = freezed,
    Object? electricityFee = freezed,
    Object? gas_fee = freezed,
    Object? othersFee = freezed,
    Object? address = freezed,
    Object? notice = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ShowBookedRoomModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      advanceFee: freezed == advanceFee
          ? _value.advanceFee
          : advanceFee // ignore: cast_nullable_to_non_nullable
              as String?,
      electricityFee: freezed == electricityFee
          ? _value.electricityFee
          : electricityFee // ignore: cast_nullable_to_non_nullable
              as String?,
      gas_fee: freezed == gas_fee
          ? _value.gas_fee
          : gas_fee // ignore: cast_nullable_to_non_nullable
              as String?,
      othersFee: freezed == othersFee
          ? _value.othersFee
          : othersFee // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowBookedRoomModel implements _ShowBookedRoomModel {
  const _$_ShowBookedRoomModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'owner_id') this.ownerId,
      @JsonKey(name: 'house_id') this.houseId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'owner_name') this.ownerName,
      @JsonKey(name: 'owner_number') this.ownerNumber,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'user_number') this.userNumber,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'fee') this.fee,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'advance_fee') this.advanceFee,
      @JsonKey(name: 'electricity_fee') this.electricityFee,
      @JsonKey(name: 'gas_fee') this.gas_fee,
      @JsonKey(name: 'others_fee') this.othersFee,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'notice') this.notice,
      @JsonKey(name: 'status') this.status});

  factory _$_ShowBookedRoomModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShowBookedRoomModelFromJson(json);

 
  @override
  @JsonKey(name: 'id')
  final int? id;
 
  @override
  @JsonKey(name: 'owner_id')
  final int? ownerId;
 
  @override
  @JsonKey(name: 'house_id')
  final int? houseId;
 
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
 
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
  @JsonKey(name: 'image')
  final String? image;
 
  @override
  @JsonKey(name: 'category')
  final String? category;
 
  @override
  @JsonKey(name: 'fee')
  final String? fee;
 
  @override
  @JsonKey(name: 'quantity')
  final String? quantity;
 
  @override
  @JsonKey(name: 'advance_fee')
  final String? advanceFee;
 
  @override
  @JsonKey(name: 'electricity_fee')
  final String? electricityFee;
 
  @override
  @JsonKey(name: 'gas_fee')
  final String? gas_fee;
 
  @override
  @JsonKey(name: 'others_fee')
  final String? othersFee;
 
  @override
  @JsonKey(name: 'address')
  final String? address;
 
  @override
  @JsonKey(name: 'notice')
  final String? notice;
 
  @override
  @JsonKey(name: 'status')
  final String? status;

  @override
  String toString() {
    return 'ShowBookedRoomModel(id: $id, ownerId: $ownerId, houseId: $houseId, userId: $userId, ownerName: $ownerName, ownerNumber: $ownerNumber, userName: $userName, userNumber: $userNumber, image: $image, category: $category, fee: $fee, quantity: $quantity, advanceFee: $advanceFee, electricityFee: $electricityFee, gas_fee: $gas_fee, othersFee: $othersFee, address: $address, notice: $notice, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowBookedRoomModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.houseId, houseId) || other.houseId == houseId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerNumber, ownerNumber) ||
                other.ownerNumber == ownerNumber) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userNumber, userNumber) ||
                other.userNumber == userNumber) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.advanceFee, advanceFee) ||
                other.advanceFee == advanceFee) &&
            (identical(other.electricityFee, electricityFee) ||
                other.electricityFee == electricityFee) &&
            (identical(other.gas_fee, gas_fee) || other.gas_fee == gas_fee) &&
            (identical(other.othersFee, othersFee) ||
                other.othersFee == othersFee) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.notice, notice) || other.notice == notice) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        ownerId,
        houseId,
        userId,
        ownerName,
        ownerNumber,
        userName,
        userNumber,
        image,
        category,
        fee,
        quantity,
        advanceFee,
        electricityFee,
        gas_fee,
        othersFee,
        address,
        notice,
        status
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowBookedRoomModelCopyWith<_$_ShowBookedRoomModel> get copyWith =>
      __$$_ShowBookedRoomModelCopyWithImpl<_$_ShowBookedRoomModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowBookedRoomModelToJson(
      this,
    );
  }
}

abstract class _ShowBookedRoomModel implements ShowBookedRoomModel {
  const factory _ShowBookedRoomModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'owner_id') final int? ownerId,
      @JsonKey(name: 'house_id') final int? houseId,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'owner_name') final String? ownerName,
      @JsonKey(name: 'owner_number') final String? ownerNumber,
      @JsonKey(name: 'user_name') final String? userName,
      @JsonKey(name: 'user_number') final String? userNumber,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'category') final String? category,
      @JsonKey(name: 'fee') final String? fee,
      @JsonKey(name: 'quantity') final String? quantity,
      @JsonKey(name: 'advance_fee') final String? advanceFee,
      @JsonKey(name: 'electricity_fee') final String? electricityFee,
      @JsonKey(name: 'gas_fee') final String? gas_fee,
      @JsonKey(name: 'others_fee') final String? othersFee,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'notice') final String? notice,
      @JsonKey(name: 'status') final String? status}) = _$_ShowBookedRoomModel;

  factory _ShowBookedRoomModel.fromJson(Map<String, dynamic> json) =
      _$_ShowBookedRoomModel.fromJson;

  @override  
  @JsonKey(name: 'id')
  int? get id;
  @override  
  @JsonKey(name: 'owner_id')
  int? get ownerId;
  @override  
  @JsonKey(name: 'house_id')
  int? get houseId;
  @override  
  @JsonKey(name: 'user_id')
  int? get userId;
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
  @JsonKey(name: 'image')
  String? get image;
  @override  
  @JsonKey(name: 'category')
  String? get category;
  @override  
  @JsonKey(name: 'fee')
  String? get fee;
  @override  
  @JsonKey(name: 'quantity')
  String? get quantity;
  @override  
  @JsonKey(name: 'advance_fee')
  String? get advanceFee;
  @override  
  @JsonKey(name: 'electricity_fee')
  String? get electricityFee;
  @override  
  @JsonKey(name: 'gas_fee')
  String? get gas_fee;
  @override  
  @JsonKey(name: 'others_fee')
  String? get othersFee;
  @override  
  @JsonKey(name: 'address')
  String? get address;
  @override  
  @JsonKey(name: 'notice')
  String? get notice;
  @override  
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_ShowBookedRoomModelCopyWith<_$_ShowBookedRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}
