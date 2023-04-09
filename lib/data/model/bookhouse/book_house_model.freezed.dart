// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_house_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookHouseModel _$BookHouseModelFromJson(Map<String, dynamic> json) {
  return _BookHouseModel.fromJson(json);
}

/// @nodoc
mixin _$BookHouseModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookHouseModelCopyWith<BookHouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookHouseModelCopyWith<$Res> {
  factory $BookHouseModelCopyWith(
          BookHouseModel value, $Res Function(BookHouseModel) then) =
      _$BookHouseModelCopyWithImpl<$Res, BookHouseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$BookHouseModelCopyWithImpl<$Res, $Val extends BookHouseModel>
    implements $BookHouseModelCopyWith<$Res> {
  _$BookHouseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookHouseModelCopyWith<$Res>
    implements $BookHouseModelCopyWith<$Res> {
  factory _$$_BookHouseModelCopyWith(
          _$_BookHouseModel value, $Res Function(_$_BookHouseModel) then) =
      __$$_BookHouseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$_BookHouseModelCopyWithImpl<$Res>
    extends _$BookHouseModelCopyWithImpl<$Res, _$_BookHouseModel>
    implements _$$_BookHouseModelCopyWith<$Res> {
  __$$_BookHouseModelCopyWithImpl(
      _$_BookHouseModel _value, $Res Function(_$_BookHouseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_BookHouseModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookHouseModel implements _BookHouseModel {
  const _$_BookHouseModel(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message});

  factory _$_BookHouseModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookHouseModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'BookHouseModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookHouseModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookHouseModelCopyWith<_$_BookHouseModel> get copyWith =>
      __$$_BookHouseModelCopyWithImpl<_$_BookHouseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookHouseModelToJson(
      this,
    );
  }
}

abstract class _BookHouseModel implements BookHouseModel {
  const factory _BookHouseModel(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message}) = _$_BookHouseModel;

  factory _BookHouseModel.fromJson(Map<String, dynamic> json) =
      _$_BookHouseModel.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_BookHouseModelCopyWith<_$_BookHouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
