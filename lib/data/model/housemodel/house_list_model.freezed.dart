// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'house_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HouseListModel _$HouseListModelFromJson(Map<String, dynamic> json) {
  return _HouseListModel.fromJson(json);
}

/// @nodoc
mixin _$HouseListModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<HouseModel>? get houseModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HouseListModelCopyWith<HouseListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseListModelCopyWith<$Res> {
  factory $HouseListModelCopyWith(
          HouseListModel value, $Res Function(HouseListModel) then) =
      _$HouseListModelCopyWithImpl<$Res, HouseListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<HouseModel>? houseModel});
}

/// @nodoc
class _$HouseListModelCopyWithImpl<$Res, $Val extends HouseListModel>
    implements $HouseListModelCopyWith<$Res> {
  _$HouseListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? houseModel = freezed,
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
      houseModel: freezed == houseModel
          ? _value.houseModel
          : houseModel // ignore: cast_nullable_to_non_nullable
              as List<HouseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HouseListModelCopyWith<$Res>
    implements $HouseListModelCopyWith<$Res> {
  factory _$$_HouseListModelCopyWith(
          _$_HouseListModel value, $Res Function(_$_HouseListModel) then) =
      __$$_HouseListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<HouseModel>? houseModel});
}

/// @nodoc
class __$$_HouseListModelCopyWithImpl<$Res>
    extends _$HouseListModelCopyWithImpl<$Res, _$_HouseListModel>
    implements _$$_HouseListModelCopyWith<$Res> {
  __$$_HouseListModelCopyWithImpl(
      _$_HouseListModel _value, $Res Function(_$_HouseListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? houseModel = freezed,
  }) {
    return _then(_$_HouseListModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      houseModel: freezed == houseModel
          ? _value._houseModel
          : houseModel // ignore: cast_nullable_to_non_nullable
              as List<HouseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HouseListModel implements _HouseListModel {
  const _$_HouseListModel(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<HouseModel>? houseModel})
      : _houseModel = houseModel;

  factory _$_HouseListModel.fromJson(Map<String, dynamic> json) =>
      _$$_HouseListModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<HouseModel>? _houseModel;
  @override
  @JsonKey(name: 'data')
  List<HouseModel>? get houseModel {
    final value = _houseModel;
    if (value == null) return null;
    if (_houseModel is EqualUnmodifiableListView) return _houseModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HouseListModel(status: $status, message: $message, houseModel: $houseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HouseListModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._houseModel, _houseModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_houseModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HouseListModelCopyWith<_$_HouseListModel> get copyWith =>
      __$$_HouseListModelCopyWithImpl<_$_HouseListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HouseListModelToJson(
      this,
    );
  }
}

abstract class _HouseListModel implements HouseListModel {
  const factory _HouseListModel(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<HouseModel>? houseModel}) =
      _$_HouseListModel;

  factory _HouseListModel.fromJson(Map<String, dynamic> json) =
      _$_HouseListModel.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<HouseModel>? get houseModel;
  @override
  @JsonKey(ignore: true)
  _$$_HouseListModelCopyWith<_$_HouseListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

HouseModel _$HouseModelFromJson(Map<String, dynamic> json) {
  return _HouseModel.fromJson(json);
}

/// @nodoc
mixin _$HouseModel {
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
  String? get fee => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  String? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'advance_fee')
  String? get advanceFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'electricity_fee')
  String? get electricityFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'gas_fee')
  String? get gasFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'others_fee')
  String? get othersFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'notice')
  String? get notice => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_book')
  String? get canBook => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_id')
  int? get houseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  String? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HouseModelCopyWith<HouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseModelCopyWith<$Res> {
  factory $HouseModelCopyWith(
          HouseModel value, $Res Function(HouseModel) then) =
      _$HouseModelCopyWithImpl<$Res, HouseModel>;
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
      @JsonKey(name: 'fee') String? fee,
      @JsonKey(name: 'quantity') String? quantity,
      @JsonKey(name: 'advance_fee') String? advanceFee,
      @JsonKey(name: 'electricity_fee') String? electricityFee,
      @JsonKey(name: 'gas_fee') String? gasFee,
      @JsonKey(name: 'others_fee') String? othersFee,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'notice') String? notice,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'can_book') String? canBook,
      @JsonKey(name: 'house_id') int? houseId,
      @JsonKey(name: 'time') String? time});
}

/// @nodoc
class _$HouseModelCopyWithImpl<$Res, $Val extends HouseModel>
    implements $HouseModelCopyWith<$Res> {
  _$HouseModelCopyWithImpl(this._value, this._then);

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
    Object? houseId = freezed,
    Object? time = freezed,
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
      gasFee: freezed == gasFee
          ? _value.gasFee
          : gasFee // ignore: cast_nullable_to_non_nullable
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
      canBook: freezed == canBook
          ? _value.canBook
          : canBook // ignore: cast_nullable_to_non_nullable
              as String?,
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HouseModelCopyWith<$Res>
    implements $HouseModelCopyWith<$Res> {
  factory _$$_HouseModelCopyWith(
          _$_HouseModel value, $Res Function(_$_HouseModel) then) =
      __$$_HouseModelCopyWithImpl<$Res>;
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
      @JsonKey(name: 'fee') String? fee,
      @JsonKey(name: 'quantity') String? quantity,
      @JsonKey(name: 'advance_fee') String? advanceFee,
      @JsonKey(name: 'electricity_fee') String? electricityFee,
      @JsonKey(name: 'gas_fee') String? gasFee,
      @JsonKey(name: 'others_fee') String? othersFee,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'notice') String? notice,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'can_book') String? canBook,
      @JsonKey(name: 'house_id') int? houseId,
      @JsonKey(name: 'time') String? time});
}

/// @nodoc
class __$$_HouseModelCopyWithImpl<$Res>
    extends _$HouseModelCopyWithImpl<$Res, _$_HouseModel>
    implements _$$_HouseModelCopyWith<$Res> {
  __$$_HouseModelCopyWithImpl(
      _$_HouseModel _value, $Res Function(_$_HouseModel) _then)
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
    Object? houseId = freezed,
    Object? time = freezed,
  }) {
    return _then(_$_HouseModel(
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
      gasFee: freezed == gasFee
          ? _value.gasFee
          : gasFee // ignore: cast_nullable_to_non_nullable
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
      canBook: freezed == canBook
          ? _value.canBook
          : canBook // ignore: cast_nullable_to_non_nullable
              as String?,
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HouseModel implements _HouseModel {
  const _$_HouseModel(
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
      @JsonKey(name: 'house_id') this.houseId,
      @JsonKey(name: 'time') this.time});

  factory _$_HouseModel.fromJson(Map<String, dynamic> json) =>
      _$$_HouseModelFromJson(json);

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
  final String? gasFee;
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
  @JsonKey(name: 'can_book')
  final String? canBook;
  @override
  @JsonKey(name: 'house_id')
  final int? houseId;
  @override
  @JsonKey(name: 'time')
  final String? time;

  @override
  String toString() {
    return 'HouseModel(id: $id, ownerName: $ownerName, ownerNumber: $ownerNumber, ownerId: $ownerId, image1: $image1, image2: $image2, image3: $image3, image4: $image4, video: $video, category: $category, fee: $fee, quantity: $quantity, advanceFee: $advanceFee, electricityFee: $electricityFee, gasFee: $gasFee, othersFee: $othersFee, address: $address, notice: $notice, status: $status, canBook: $canBook, houseId: $houseId, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HouseModel &&
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
            (identical(other.houseId, houseId) || other.houseId == houseId) &&
            (identical(other.time, time) || other.time == time));
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
        houseId,
        time
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HouseModelCopyWith<_$_HouseModel> get copyWith =>
      __$$_HouseModelCopyWithImpl<_$_HouseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HouseModelToJson(
      this,
    );
  }
}

abstract class _HouseModel implements HouseModel {
  const factory _HouseModel(
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
      @JsonKey(name: 'fee') final String? fee,
      @JsonKey(name: 'quantity') final String? quantity,
      @JsonKey(name: 'advance_fee') final String? advanceFee,
      @JsonKey(name: 'electricity_fee') final String? electricityFee,
      @JsonKey(name: 'gas_fee') final String? gasFee,
      @JsonKey(name: 'others_fee') final String? othersFee,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'notice') final String? notice,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'can_book') final String? canBook,
      @JsonKey(name: 'house_id') final int? houseId,
      @JsonKey(name: 'time') final String? time}) = _$_HouseModel;

  factory _HouseModel.fromJson(Map<String, dynamic> json) =
      _$_HouseModel.fromJson;

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
  String? get gasFee;
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
  @JsonKey(name: 'can_book')
  String? get canBook;
  @override
  @JsonKey(name: 'house_id')
  int? get houseId;
  @override
  @JsonKey(name: 'time')
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$_HouseModelCopyWith<_$_HouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
