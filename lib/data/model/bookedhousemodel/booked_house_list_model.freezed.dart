// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booked_house_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookedHouseListModel _$BookedHouseListModelFromJson(Map<String, dynamic> json) {
  return _BookedHouseListModel.fromJson(json);
}

/// @nodoc
mixin _$BookedHouseListModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<BookedHouseModel>? get bookedHouseModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookedHouseListModelCopyWith<BookedHouseListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookedHouseListModelCopyWith<$Res> {
  factory $BookedHouseListModelCopyWith(BookedHouseListModel value,
          $Res Function(BookedHouseListModel) then) =
      _$BookedHouseListModelCopyWithImpl<$Res, BookedHouseListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<BookedHouseModel>? bookedHouseModel});
}

/// @nodoc
class _$BookedHouseListModelCopyWithImpl<$Res,
        $Val extends BookedHouseListModel>
    implements $BookedHouseListModelCopyWith<$Res> {
  _$BookedHouseListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? bookedHouseModel = freezed,
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
      bookedHouseModel: freezed == bookedHouseModel
          ? _value.bookedHouseModel
          : bookedHouseModel // ignore: cast_nullable_to_non_nullable
              as List<BookedHouseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookedHouseListModelCopyWith<$Res>
    implements $BookedHouseListModelCopyWith<$Res> {
  factory _$$_BookedHouseListModelCopyWith(_$_BookedHouseListModel value,
          $Res Function(_$_BookedHouseListModel) then) =
      __$$_BookedHouseListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<BookedHouseModel>? bookedHouseModel});
}

/// @nodoc
class __$$_BookedHouseListModelCopyWithImpl<$Res>
    extends _$BookedHouseListModelCopyWithImpl<$Res, _$_BookedHouseListModel>
    implements _$$_BookedHouseListModelCopyWith<$Res> {
  __$$_BookedHouseListModelCopyWithImpl(_$_BookedHouseListModel _value,
      $Res Function(_$_BookedHouseListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? bookedHouseModel = freezed,
  }) {
    return _then(_$_BookedHouseListModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedHouseModel: freezed == bookedHouseModel
          ? _value._bookedHouseModel
          : bookedHouseModel // ignore: cast_nullable_to_non_nullable
              as List<BookedHouseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookedHouseListModel implements _BookedHouseListModel {
  const _$_BookedHouseListModel(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<BookedHouseModel>? bookedHouseModel})
      : _bookedHouseModel = bookedHouseModel;

  factory _$_BookedHouseListModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookedHouseListModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<BookedHouseModel>? _bookedHouseModel;
  @override
  @JsonKey(name: 'data')
  List<BookedHouseModel>? get bookedHouseModel {
    final value = _bookedHouseModel;
    if (value == null) return null;
    if (_bookedHouseModel is EqualUnmodifiableListView)
      return _bookedHouseModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookedHouseListModel(status: $status, message: $message, bookedHouseModel: $bookedHouseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookedHouseListModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._bookedHouseModel, _bookedHouseModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_bookedHouseModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookedHouseListModelCopyWith<_$_BookedHouseListModel> get copyWith =>
      __$$_BookedHouseListModelCopyWithImpl<_$_BookedHouseListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookedHouseListModelToJson(
      this,
    );
  }
}

abstract class _BookedHouseListModel implements BookedHouseListModel {
  const factory _BookedHouseListModel(
          {@JsonKey(name: 'status')
              final String? status,
          @JsonKey(name: 'message')
              final String? message,
          @JsonKey(name: 'data')
              final List<BookedHouseModel>? bookedHouseModel}) =
      _$_BookedHouseListModel;

  factory _BookedHouseListModel.fromJson(Map<String, dynamic> json) =
      _$_BookedHouseListModel.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<BookedHouseModel>? get bookedHouseModel;
  @override
  @JsonKey(ignore: true)
  _$$_BookedHouseListModelCopyWith<_$_BookedHouseListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BookedHouseModel _$BookedHouseModelFromJson(Map<String, dynamic> json) {
  return _BookedHouseModel.fromJson(json);
}

/// @nodoc
mixin _$BookedHouseModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment')
  String? get payment => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  int? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_name')
  String? get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_number')
  String? get ownerNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'fee')
  int? get fee => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  String? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'advance_fee')
  int? get advanceFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'electricity_fee')
  int? get electricityFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'gas_fee')
  int? get gasFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'others_fee')
  int? get othersFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'notice')
  String? get notice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookedHouseModelCopyWith<BookedHouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookedHouseModelCopyWith<$Res> {
  factory $BookedHouseModelCopyWith(
          BookedHouseModel value, $Res Function(BookedHouseModel) then) =
      _$BookedHouseModelCopyWithImpl<$Res, BookedHouseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'payment') String? payment,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'owner_name') String? ownerName,
      @JsonKey(name: 'owner_number') String? ownerNumber,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'fee') int? fee,
      @JsonKey(name: 'quantity') String? quantity,
      @JsonKey(name: 'advance_fee') int? advanceFee,
      @JsonKey(name: 'electricity_fee') int? electricityFee,
      @JsonKey(name: 'gas_fee') int? gasFee,
      @JsonKey(name: 'others_fee') int? othersFee,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'notice') String? notice});
}

/// @nodoc
class _$BookedHouseModelCopyWithImpl<$Res, $Val extends BookedHouseModel>
    implements $BookedHouseModelCopyWith<$Res> {
  _$BookedHouseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? payment = freezed,
    Object? ownerId = freezed,
    Object? ownerName = freezed,
    Object? ownerNumber = freezed,
    Object? image = freezed,
    Object? category = freezed,
    Object? fee = freezed,
    Object? quantity = freezed,
    Object? advanceFee = freezed,
    Object? electricityFee = freezed,
    Object? gasFee = freezed,
    Object? othersFee = freezed,
    Object? address = freezed,
    Object? notice = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerNumber: freezed == ownerNumber
          ? _value.ownerNumber
          : ownerNumber // ignore: cast_nullable_to_non_nullable
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
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      advanceFee: freezed == advanceFee
          ? _value.advanceFee
          : advanceFee // ignore: cast_nullable_to_non_nullable
              as int?,
      electricityFee: freezed == electricityFee
          ? _value.electricityFee
          : electricityFee // ignore: cast_nullable_to_non_nullable
              as int?,
      gasFee: freezed == gasFee
          ? _value.gasFee
          : gasFee // ignore: cast_nullable_to_non_nullable
              as int?,
      othersFee: freezed == othersFee
          ? _value.othersFee
          : othersFee // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookedHouseModelCopyWith<$Res>
    implements $BookedHouseModelCopyWith<$Res> {
  factory _$$_BookedHouseModelCopyWith(
          _$_BookedHouseModel value, $Res Function(_$_BookedHouseModel) then) =
      __$$_BookedHouseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'payment') String? payment,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'owner_name') String? ownerName,
      @JsonKey(name: 'owner_number') String? ownerNumber,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'fee') int? fee,
      @JsonKey(name: 'quantity') String? quantity,
      @JsonKey(name: 'advance_fee') int? advanceFee,
      @JsonKey(name: 'electricity_fee') int? electricityFee,
      @JsonKey(name: 'gas_fee') int? gasFee,
      @JsonKey(name: 'others_fee') int? othersFee,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'notice') String? notice});
}

/// @nodoc
class __$$_BookedHouseModelCopyWithImpl<$Res>
    extends _$BookedHouseModelCopyWithImpl<$Res, _$_BookedHouseModel>
    implements _$$_BookedHouseModelCopyWith<$Res> {
  __$$_BookedHouseModelCopyWithImpl(
      _$_BookedHouseModel _value, $Res Function(_$_BookedHouseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? payment = freezed,
    Object? ownerId = freezed,
    Object? ownerName = freezed,
    Object? ownerNumber = freezed,
    Object? image = freezed,
    Object? category = freezed,
    Object? fee = freezed,
    Object? quantity = freezed,
    Object? advanceFee = freezed,
    Object? electricityFee = freezed,
    Object? gasFee = freezed,
    Object? othersFee = freezed,
    Object? address = freezed,
    Object? notice = freezed,
  }) {
    return _then(_$_BookedHouseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerNumber: freezed == ownerNumber
          ? _value.ownerNumber
          : ownerNumber // ignore: cast_nullable_to_non_nullable
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
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      advanceFee: freezed == advanceFee
          ? _value.advanceFee
          : advanceFee // ignore: cast_nullable_to_non_nullable
              as int?,
      electricityFee: freezed == electricityFee
          ? _value.electricityFee
          : electricityFee // ignore: cast_nullable_to_non_nullable
              as int?,
      gasFee: freezed == gasFee
          ? _value.gasFee
          : gasFee // ignore: cast_nullable_to_non_nullable
              as int?,
      othersFee: freezed == othersFee
          ? _value.othersFee
          : othersFee // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookedHouseModel implements _BookedHouseModel {
  const _$_BookedHouseModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'payment') this.payment,
      @JsonKey(name: 'owner_id') this.ownerId,
      @JsonKey(name: 'owner_name') this.ownerName,
      @JsonKey(name: 'owner_number') this.ownerNumber,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'fee') this.fee,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'advance_fee') this.advanceFee,
      @JsonKey(name: 'electricity_fee') this.electricityFee,
      @JsonKey(name: 'gas_fee') this.gasFee,
      @JsonKey(name: 'others_fee') this.othersFee,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'notice') this.notice});

  factory _$_BookedHouseModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookedHouseModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'payment')
  final String? payment;
  @override
  @JsonKey(name: 'owner_id')
  final int? ownerId;
  @override
  @JsonKey(name: 'owner_name')
  final String? ownerName;
  @override
  @JsonKey(name: 'owner_number')
  final String? ownerNumber;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'category')
  final String? category;
  @override
  @JsonKey(name: 'fee')
  final int? fee;
  @override
  @JsonKey(name: 'quantity')
  final String? quantity;
  @override
  @JsonKey(name: 'advance_fee')
  final int? advanceFee;
  @override
  @JsonKey(name: 'electricity_fee')
  final int? electricityFee;
  @override
  @JsonKey(name: 'gas_fee')
  final int? gasFee;
  @override
  @JsonKey(name: 'others_fee')
  final int? othersFee;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'notice')
  final String? notice;

  @override
  String toString() {
    return 'BookedHouseModel(id: $id, userId: $userId, payment: $payment, ownerId: $ownerId, ownerName: $ownerName, ownerNumber: $ownerNumber, image: $image, category: $category, fee: $fee, quantity: $quantity, advanceFee: $advanceFee, electricityFee: $electricityFee, gasFee: $gasFee, othersFee: $othersFee, address: $address, notice: $notice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookedHouseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerNumber, ownerNumber) ||
                other.ownerNumber == ownerNumber) &&
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
            (identical(other.gasFee, gasFee) || other.gasFee == gasFee) &&
            (identical(other.othersFee, othersFee) ||
                other.othersFee == othersFee) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.notice, notice) || other.notice == notice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      payment,
      ownerId,
      ownerName,
      ownerNumber,
      image,
      category,
      fee,
      quantity,
      advanceFee,
      electricityFee,
      gasFee,
      othersFee,
      address,
      notice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookedHouseModelCopyWith<_$_BookedHouseModel> get copyWith =>
      __$$_BookedHouseModelCopyWithImpl<_$_BookedHouseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookedHouseModelToJson(
      this,
    );
  }
}

abstract class _BookedHouseModel implements BookedHouseModel {
  const factory _BookedHouseModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'payment') final String? payment,
      @JsonKey(name: 'owner_id') final int? ownerId,
      @JsonKey(name: 'owner_name') final String? ownerName,
      @JsonKey(name: 'owner_number') final String? ownerNumber,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'category') final String? category,
      @JsonKey(name: 'fee') final int? fee,
      @JsonKey(name: 'quantity') final String? quantity,
      @JsonKey(name: 'advance_fee') final int? advanceFee,
      @JsonKey(name: 'electricity_fee') final int? electricityFee,
      @JsonKey(name: 'gas_fee') final int? gasFee,
      @JsonKey(name: 'others_fee') final int? othersFee,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'notice') final String? notice}) = _$_BookedHouseModel;

  factory _BookedHouseModel.fromJson(Map<String, dynamic> json) =
      _$_BookedHouseModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'payment')
  String? get payment;
  @override
  @JsonKey(name: 'owner_id')
  int? get ownerId;
  @override
  @JsonKey(name: 'owner_name')
  String? get ownerName;
  @override
  @JsonKey(name: 'owner_number')
  String? get ownerNumber;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'category')
  String? get category;
  @override
  @JsonKey(name: 'fee')
  int? get fee;
  @override
  @JsonKey(name: 'quantity')
  String? get quantity;
  @override
  @JsonKey(name: 'advance_fee')
  int? get advanceFee;
  @override
  @JsonKey(name: 'electricity_fee')
  int? get electricityFee;
  @override
  @JsonKey(name: 'gas_fee')
  int? get gasFee;
  @override
  @JsonKey(name: 'others_fee')
  int? get othersFee;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'notice')
  String? get notice;
  @override
  @JsonKey(ignore: true)
  _$$_BookedHouseModelCopyWith<_$_BookedHouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
