// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_house_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OwnerHouseListModel _$OwnerHouseListModelFromJson(Map<String, dynamic> json) {
  return _OwnerHouseListModel.fromJson(json);
}

/// @nodoc
mixin _$OwnerHouseListModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<OwnerHouseModel>? get ownerHouseModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerHouseListModelCopyWith<OwnerHouseListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerHouseListModelCopyWith<$Res> {
  factory $OwnerHouseListModelCopyWith(
          OwnerHouseListModel value, $Res Function(OwnerHouseListModel) then) =
      _$OwnerHouseListModelCopyWithImpl<$Res, OwnerHouseListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<OwnerHouseModel>? ownerHouseModel});
}

/// @nodoc
class _$OwnerHouseListModelCopyWithImpl<$Res, $Val extends OwnerHouseListModel>
    implements $OwnerHouseListModelCopyWith<$Res> {
  _$OwnerHouseListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? ownerHouseModel = freezed,
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
      ownerHouseModel: freezed == ownerHouseModel
          ? _value.ownerHouseModel
          : ownerHouseModel // ignore: cast_nullable_to_non_nullable
              as List<OwnerHouseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerHouseListModelCopyWith<$Res>
    implements $OwnerHouseListModelCopyWith<$Res> {
  factory _$$_OwnerHouseListModelCopyWith(_$_OwnerHouseListModel value,
          $Res Function(_$_OwnerHouseListModel) then) =
      __$$_OwnerHouseListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<OwnerHouseModel>? ownerHouseModel});
}

/// @nodoc
class __$$_OwnerHouseListModelCopyWithImpl<$Res>
    extends _$OwnerHouseListModelCopyWithImpl<$Res, _$_OwnerHouseListModel>
    implements _$$_OwnerHouseListModelCopyWith<$Res> {
  __$$_OwnerHouseListModelCopyWithImpl(_$_OwnerHouseListModel _value,
      $Res Function(_$_OwnerHouseListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? ownerHouseModel = freezed,
  }) {
    return _then(_$_OwnerHouseListModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerHouseModel: freezed == ownerHouseModel
          ? _value._ownerHouseModel
          : ownerHouseModel // ignore: cast_nullable_to_non_nullable
              as List<OwnerHouseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OwnerHouseListModel implements _OwnerHouseListModel {
  const _$_OwnerHouseListModel(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<OwnerHouseModel>? ownerHouseModel})
      : _ownerHouseModel = ownerHouseModel;

  factory _$_OwnerHouseListModel.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerHouseListModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<OwnerHouseModel>? _ownerHouseModel;
  @override
  @JsonKey(name: 'data')
  List<OwnerHouseModel>? get ownerHouseModel {
    final value = _ownerHouseModel;
    if (value == null) return null;
    if (_ownerHouseModel is EqualUnmodifiableListView) return _ownerHouseModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OwnerHouseListModel(status: $status, message: $message, ownerHouseModel: $ownerHouseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnerHouseListModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._ownerHouseModel, _ownerHouseModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_ownerHouseModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerHouseListModelCopyWith<_$_OwnerHouseListModel> get copyWith =>
      __$$_OwnerHouseListModelCopyWithImpl<_$_OwnerHouseListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerHouseListModelToJson(
      this,
    );
  }
}

abstract class _OwnerHouseListModel implements OwnerHouseListModel {
  const factory _OwnerHouseListModel(
          {@JsonKey(name: 'status')
              final String? status,
          @JsonKey(name: 'message')
              final String? message,
          @JsonKey(name: 'data')
              final List<OwnerHouseModel>? ownerHouseModel}) =
      _$_OwnerHouseListModel;

  factory _OwnerHouseListModel.fromJson(Map<String, dynamic> json) =
      _$_OwnerHouseListModel.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<OwnerHouseModel>? get ownerHouseModel;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerHouseListModelCopyWith<_$_OwnerHouseListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OwnerHouseModel _$OwnerHouseModelFromJson(Map<String, dynamic> json) {
  return _OwnerHouseModel.fromJson(json);
}

/// @nodoc
mixin _$OwnerHouseModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_name')
  String? get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_number')
  String? get ownerNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  int? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image1')
  String? get image1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'image2')
  String? get image2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'image3')
  String? get image3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'image4')
  String? get image4 => throw _privateConstructorUsedError;
  @JsonKey(name: 'video')
  String? get video => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_book')
  String? get canBook => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_token')
  String? get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerHouseModelCopyWith<OwnerHouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerHouseModelCopyWith<$Res> {
  factory $OwnerHouseModelCopyWith(
          OwnerHouseModel value, $Res Function(OwnerHouseModel) then) =
      _$OwnerHouseModelCopyWithImpl<$Res, OwnerHouseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'owner_name') String? ownerName,
      @JsonKey(name: 'owner_number') String? ownerNumber,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'image1') String? image1,
      @JsonKey(name: 'image2') String? image2,
      @JsonKey(name: 'image3') String? image3,
      @JsonKey(name: 'image4') String? image4,
      @JsonKey(name: 'video') String? video,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'fee') int? fee,
      @JsonKey(name: 'quantity') String? quantity,
      @JsonKey(name: 'advance_fee') int? advanceFee,
      @JsonKey(name: 'electricity_fee') int? electricityFee,
      @JsonKey(name: 'gas_fee') int? gasFee,
      @JsonKey(name: 'others_fee') int? othersFee,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'notice') String? notice,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'can_book') String? canBook,
      @JsonKey(name: 'device_token') String? deviceToken});
}

/// @nodoc
class _$OwnerHouseModelCopyWithImpl<$Res, $Val extends OwnerHouseModel>
    implements $OwnerHouseModelCopyWith<$Res> {
  _$OwnerHouseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerName = freezed,
    Object? ownerNumber = freezed,
    Object? ownerId = freezed,
    Object? image1 = freezed,
    Object? image2 = freezed,
    Object? image3 = freezed,
    Object? image4 = freezed,
    Object? video = freezed,
    Object? category = freezed,
    Object? fee = freezed,
    Object? quantity = freezed,
    Object? advanceFee = freezed,
    Object? electricityFee = freezed,
    Object? gasFee = freezed,
    Object? othersFee = freezed,
    Object? address = freezed,
    Object? notice = freezed,
    Object? status = freezed,
    Object? canBook = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerNumber: freezed == ownerNumber
          ? _value.ownerNumber
          : ownerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      image2: freezed == image2
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String?,
      image3: freezed == image3
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as String?,
      image4: freezed == image4
          ? _value.image4
          : image4 // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      canBook: freezed == canBook
          ? _value.canBook
          : canBook // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerHouseModelCopyWith<$Res>
    implements $OwnerHouseModelCopyWith<$Res> {
  factory _$$_OwnerHouseModelCopyWith(
          _$_OwnerHouseModel value, $Res Function(_$_OwnerHouseModel) then) =
      __$$_OwnerHouseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'owner_name') String? ownerName,
      @JsonKey(name: 'owner_number') String? ownerNumber,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'image1') String? image1,
      @JsonKey(name: 'image2') String? image2,
      @JsonKey(name: 'image3') String? image3,
      @JsonKey(name: 'image4') String? image4,
      @JsonKey(name: 'video') String? video,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'fee') int? fee,
      @JsonKey(name: 'quantity') String? quantity,
      @JsonKey(name: 'advance_fee') int? advanceFee,
      @JsonKey(name: 'electricity_fee') int? electricityFee,
      @JsonKey(name: 'gas_fee') int? gasFee,
      @JsonKey(name: 'others_fee') int? othersFee,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'notice') String? notice,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'can_book') String? canBook,
      @JsonKey(name: 'device_token') String? deviceToken});
}

/// @nodoc
class __$$_OwnerHouseModelCopyWithImpl<$Res>
    extends _$OwnerHouseModelCopyWithImpl<$Res, _$_OwnerHouseModel>
    implements _$$_OwnerHouseModelCopyWith<$Res> {
  __$$_OwnerHouseModelCopyWithImpl(
      _$_OwnerHouseModel _value, $Res Function(_$_OwnerHouseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerName = freezed,
    Object? ownerNumber = freezed,
    Object? ownerId = freezed,
    Object? image1 = freezed,
    Object? image2 = freezed,
    Object? image3 = freezed,
    Object? image4 = freezed,
    Object? video = freezed,
    Object? category = freezed,
    Object? fee = freezed,
    Object? quantity = freezed,
    Object? advanceFee = freezed,
    Object? electricityFee = freezed,
    Object? gasFee = freezed,
    Object? othersFee = freezed,
    Object? address = freezed,
    Object? notice = freezed,
    Object? status = freezed,
    Object? canBook = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_$_OwnerHouseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerNumber: freezed == ownerNumber
          ? _value.ownerNumber
          : ownerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      image2: freezed == image2
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String?,
      image3: freezed == image3
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as String?,
      image4: freezed == image4
          ? _value.image4
          : image4 // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      canBook: freezed == canBook
          ? _value.canBook
          : canBook // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OwnerHouseModel implements _OwnerHouseModel {
  const _$_OwnerHouseModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'owner_name') this.ownerName,
      @JsonKey(name: 'owner_number') this.ownerNumber,
      @JsonKey(name: 'owner_id') this.ownerId,
      @JsonKey(name: 'image1') this.image1,
      @JsonKey(name: 'image2') this.image2,
      @JsonKey(name: 'image3') this.image3,
      @JsonKey(name: 'image4') this.image4,
      @JsonKey(name: 'video') this.video,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'fee') this.fee,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'advance_fee') this.advanceFee,
      @JsonKey(name: 'electricity_fee') this.electricityFee,
      @JsonKey(name: 'gas_fee') this.gasFee,
      @JsonKey(name: 'others_fee') this.othersFee,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'notice') this.notice,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'can_book') this.canBook,
      @JsonKey(name: 'device_token') this.deviceToken});

  factory _$_OwnerHouseModel.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerHouseModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'owner_name')
  final String? ownerName;
  @override
  @JsonKey(name: 'owner_number')
  final String? ownerNumber;
  @override
  @JsonKey(name: 'owner_id')
  final int? ownerId;
  @override
  @JsonKey(name: 'image1')
  final String? image1;
  @override
  @JsonKey(name: 'image2')
  final String? image2;
  @override
  @JsonKey(name: 'image3')
  final String? image3;
  @override
  @JsonKey(name: 'image4')
  final String? image4;
  @override
  @JsonKey(name: 'video')
  final String? video;
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
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'can_book')
  final String? canBook;
  @override
  @JsonKey(name: 'device_token')
  final String? deviceToken;

  @override
  String toString() {
    return 'OwnerHouseModel(id: $id, ownerName: $ownerName, ownerNumber: $ownerNumber, ownerId: $ownerId, image1: $image1, image2: $image2, image3: $image3, image4: $image4, video: $video, category: $category, fee: $fee, quantity: $quantity, advanceFee: $advanceFee, electricityFee: $electricityFee, gasFee: $gasFee, othersFee: $othersFee, address: $address, notice: $notice, status: $status, canBook: $canBook, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnerHouseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerNumber, ownerNumber) ||
                other.ownerNumber == ownerNumber) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.image1, image1) || other.image1 == image1) &&
            (identical(other.image2, image2) || other.image2 == image2) &&
            (identical(other.image3, image3) || other.image3 == image3) &&
            (identical(other.image4, image4) || other.image4 == image4) &&
            (identical(other.video, video) || other.video == video) &&
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
            (identical(other.notice, notice) || other.notice == notice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.canBook, canBook) || other.canBook == canBook) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        ownerName,
        ownerNumber,
        ownerId,
        image1,
        image2,
        image3,
        image4,
        video,
        category,
        fee,
        quantity,
        advanceFee,
        electricityFee,
        gasFee,
        othersFee,
        address,
        notice,
        status,
        canBook,
        deviceToken
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerHouseModelCopyWith<_$_OwnerHouseModel> get copyWith =>
      __$$_OwnerHouseModelCopyWithImpl<_$_OwnerHouseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerHouseModelToJson(
      this,
    );
  }
}

abstract class _OwnerHouseModel implements OwnerHouseModel {
  const factory _OwnerHouseModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'owner_name') final String? ownerName,
          @JsonKey(name: 'owner_number') final String? ownerNumber,
          @JsonKey(name: 'owner_id') final int? ownerId,
          @JsonKey(name: 'image1') final String? image1,
          @JsonKey(name: 'image2') final String? image2,
          @JsonKey(name: 'image3') final String? image3,
          @JsonKey(name: 'image4') final String? image4,
          @JsonKey(name: 'video') final String? video,
          @JsonKey(name: 'category') final String? category,
          @JsonKey(name: 'fee') final int? fee,
          @JsonKey(name: 'quantity') final String? quantity,
          @JsonKey(name: 'advance_fee') final int? advanceFee,
          @JsonKey(name: 'electricity_fee') final int? electricityFee,
          @JsonKey(name: 'gas_fee') final int? gasFee,
          @JsonKey(name: 'others_fee') final int? othersFee,
          @JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'notice') final String? notice,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'can_book') final String? canBook,
          @JsonKey(name: 'device_token') final String? deviceToken}) =
      _$_OwnerHouseModel;

  factory _OwnerHouseModel.fromJson(Map<String, dynamic> json) =
      _$_OwnerHouseModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'owner_name')
  String? get ownerName;
  @override
  @JsonKey(name: 'owner_number')
  String? get ownerNumber;
  @override
  @JsonKey(name: 'owner_id')
  int? get ownerId;
  @override
  @JsonKey(name: 'image1')
  String? get image1;
  @override
  @JsonKey(name: 'image2')
  String? get image2;
  @override
  @JsonKey(name: 'image3')
  String? get image3;
  @override
  @JsonKey(name: 'image4')
  String? get image4;
  @override
  @JsonKey(name: 'video')
  String? get video;
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
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'can_book')
  String? get canBook;
  @override
  @JsonKey(name: 'device_token')
  String? get deviceToken;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerHouseModelCopyWith<_$_OwnerHouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
