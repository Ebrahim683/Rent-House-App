// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_house_request_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookHouseRequestListModel _$BookHouseRequestListModelFromJson(
    Map<String, dynamic> json) {
  return _BookHouseRequestListModel.fromJson(json);
}

/// @nodoc
mixin _$BookHouseRequestListModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<BookHouseRequestModel>? get bookHouseRequestModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookHouseRequestListModelCopyWith<BookHouseRequestListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookHouseRequestListModelCopyWith<$Res> {
  factory $BookHouseRequestListModelCopyWith(BookHouseRequestListModel value,
          $Res Function(BookHouseRequestListModel) then) =
      _$BookHouseRequestListModelCopyWithImpl<$Res, BookHouseRequestListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status')
          String? status,
      @JsonKey(name: 'message')
          String? message,
      @JsonKey(name: 'data')
          List<BookHouseRequestModel>? bookHouseRequestModel});
}

/// @nodoc
class _$BookHouseRequestListModelCopyWithImpl<$Res,
        $Val extends BookHouseRequestListModel>
    implements $BookHouseRequestListModelCopyWith<$Res> {
  _$BookHouseRequestListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? bookHouseRequestModel = freezed,
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
      bookHouseRequestModel: freezed == bookHouseRequestModel
          ? _value.bookHouseRequestModel
          : bookHouseRequestModel // ignore: cast_nullable_to_non_nullable
              as List<BookHouseRequestModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookHouseRequestListModelCopyWith<$Res>
    implements $BookHouseRequestListModelCopyWith<$Res> {
  factory _$$_BookHouseRequestListModelCopyWith(
          _$_BookHouseRequestListModel value,
          $Res Function(_$_BookHouseRequestListModel) then) =
      __$$_BookHouseRequestListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status')
          String? status,
      @JsonKey(name: 'message')
          String? message,
      @JsonKey(name: 'data')
          List<BookHouseRequestModel>? bookHouseRequestModel});
}

/// @nodoc
class __$$_BookHouseRequestListModelCopyWithImpl<$Res>
    extends _$BookHouseRequestListModelCopyWithImpl<$Res,
        _$_BookHouseRequestListModel>
    implements _$$_BookHouseRequestListModelCopyWith<$Res> {
  __$$_BookHouseRequestListModelCopyWithImpl(
      _$_BookHouseRequestListModel _value,
      $Res Function(_$_BookHouseRequestListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? bookHouseRequestModel = freezed,
  }) {
    return _then(_$_BookHouseRequestListModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      bookHouseRequestModel: freezed == bookHouseRequestModel
          ? _value._bookHouseRequestModel
          : bookHouseRequestModel // ignore: cast_nullable_to_non_nullable
              as List<BookHouseRequestModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookHouseRequestListModel implements _BookHouseRequestListModel {
  const _$_BookHouseRequestListModel(
      {@JsonKey(name: 'status')
          this.status,
      @JsonKey(name: 'message')
          this.message,
      @JsonKey(name: 'data')
          final List<BookHouseRequestModel>? bookHouseRequestModel})
      : _bookHouseRequestModel = bookHouseRequestModel;

  factory _$_BookHouseRequestListModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookHouseRequestListModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<BookHouseRequestModel>? _bookHouseRequestModel;
  @override
  @JsonKey(name: 'data')
  List<BookHouseRequestModel>? get bookHouseRequestModel {
    final value = _bookHouseRequestModel;
    if (value == null) return null;
    if (_bookHouseRequestModel is EqualUnmodifiableListView)
      return _bookHouseRequestModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookHouseRequestListModel(status: $status, message: $message, bookHouseRequestModel: $bookHouseRequestModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookHouseRequestListModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._bookHouseRequestModel, _bookHouseRequestModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_bookHouseRequestModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookHouseRequestListModelCopyWith<_$_BookHouseRequestListModel>
      get copyWith => __$$_BookHouseRequestListModelCopyWithImpl<
          _$_BookHouseRequestListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookHouseRequestListModelToJson(
      this,
    );
  }
}

abstract class _BookHouseRequestListModel implements BookHouseRequestListModel {
  const factory _BookHouseRequestListModel(
          {@JsonKey(name: 'status')
              final String? status,
          @JsonKey(name: 'message')
              final String? message,
          @JsonKey(name: 'data')
              final List<BookHouseRequestModel>? bookHouseRequestModel}) =
      _$_BookHouseRequestListModel;

  factory _BookHouseRequestListModel.fromJson(Map<String, dynamic> json) =
      _$_BookHouseRequestListModel.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<BookHouseRequestModel>? get bookHouseRequestModel;
  @override
  @JsonKey(ignore: true)
  _$$_BookHouseRequestListModelCopyWith<_$_BookHouseRequestListModel>
      get copyWith => throw _privateConstructorUsedError;
}

BookHouseRequestModel _$BookHouseRequestModelFromJson(
    Map<String, dynamic> json) {
  return _BookHouseRequestModel.fromJson(json);
}

/// @nodoc
mixin _$BookHouseRequestModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_number')
  String? get userNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_id')
  int? get houseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_token')
  String? get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookHouseRequestModelCopyWith<BookHouseRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookHouseRequestModelCopyWith<$Res> {
  factory $BookHouseRequestModelCopyWith(BookHouseRequestModel value,
          $Res Function(BookHouseRequestModel) then) =
      _$BookHouseRequestModelCopyWithImpl<$Res, BookHouseRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_number') String? userNumber,
      @JsonKey(name: 'house_id') int? houseId,
      @JsonKey(name: 'time') String? time,
      @JsonKey(name: 'device_token') String? deviceToken});
}

/// @nodoc
class _$BookHouseRequestModelCopyWithImpl<$Res,
        $Val extends BookHouseRequestModel>
    implements $BookHouseRequestModelCopyWith<$Res> {
  _$BookHouseRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? userNumber = freezed,
    Object? houseId = freezed,
    Object? time = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userNumber: freezed == userNumber
          ? _value.userNumber
          : userNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookHouseRequestModelCopyWith<$Res>
    implements $BookHouseRequestModelCopyWith<$Res> {
  factory _$$_BookHouseRequestModelCopyWith(_$_BookHouseRequestModel value,
          $Res Function(_$_BookHouseRequestModel) then) =
      __$$_BookHouseRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_number') String? userNumber,
      @JsonKey(name: 'house_id') int? houseId,
      @JsonKey(name: 'time') String? time,
      @JsonKey(name: 'device_token') String? deviceToken});
}

/// @nodoc
class __$$_BookHouseRequestModelCopyWithImpl<$Res>
    extends _$BookHouseRequestModelCopyWithImpl<$Res, _$_BookHouseRequestModel>
    implements _$$_BookHouseRequestModelCopyWith<$Res> {
  __$$_BookHouseRequestModelCopyWithImpl(_$_BookHouseRequestModel _value,
      $Res Function(_$_BookHouseRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? userNumber = freezed,
    Object? houseId = freezed,
    Object? time = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_$_BookHouseRequestModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userNumber: freezed == userNumber
          ? _value.userNumber
          : userNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
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
class _$_BookHouseRequestModel implements _BookHouseRequestModel {
  const _$_BookHouseRequestModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'user_number') this.userNumber,
      @JsonKey(name: 'house_id') this.houseId,
      @JsonKey(name: 'time') this.time,
      @JsonKey(name: 'device_token') this.deviceToken});

  factory _$_BookHouseRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookHouseRequestModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'user_number')
  final String? userNumber;
  @override
  @JsonKey(name: 'house_id')
  final int? houseId;
  @override
  @JsonKey(name: 'time')
  final String? time;
  @override
  @JsonKey(name: 'device_token')
  final String? deviceToken;

  @override
  String toString() {
    return 'BookHouseRequestModel(id: $id, userName: $userName, userNumber: $userNumber, houseId: $houseId, time: $time, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookHouseRequestModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userNumber, userNumber) ||
                other.userNumber == userNumber) &&
            (identical(other.houseId, houseId) || other.houseId == houseId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userName, userNumber, houseId, time, deviceToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookHouseRequestModelCopyWith<_$_BookHouseRequestModel> get copyWith =>
      __$$_BookHouseRequestModelCopyWithImpl<_$_BookHouseRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookHouseRequestModelToJson(
      this,
    );
  }
}

abstract class _BookHouseRequestModel implements BookHouseRequestModel {
  const factory _BookHouseRequestModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'user_name') final String? userName,
          @JsonKey(name: 'user_number') final String? userNumber,
          @JsonKey(name: 'house_id') final int? houseId,
          @JsonKey(name: 'time') final String? time,
          @JsonKey(name: 'device_token') final String? deviceToken}) =
      _$_BookHouseRequestModel;

  factory _BookHouseRequestModel.fromJson(Map<String, dynamic> json) =
      _$_BookHouseRequestModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'user_number')
  String? get userNumber;
  @override
  @JsonKey(name: 'house_id')
  int? get houseId;
  @override
  @JsonKey(name: 'time')
  String? get time;
  @override
  @JsonKey(name: 'device_token')
  String? get deviceToken;
  @override
  @JsonKey(ignore: true)
  _$$_BookHouseRequestModelCopyWith<_$_BookHouseRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
