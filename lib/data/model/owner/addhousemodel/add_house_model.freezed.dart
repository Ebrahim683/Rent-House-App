// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_house_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddHouseModel _$AddHouseModelFromJson(Map<String, dynamic> json) {
  return _AddHouseModel.fromJson(json);
}

/// @nodoc
mixin _$AddHouseModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddHouseModelCopyWith<AddHouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddHouseModelCopyWith<$Res> {
  factory $AddHouseModelCopyWith(
          AddHouseModel value, $Res Function(AddHouseModel) then) =
      _$AddHouseModelCopyWithImpl<$Res, AddHouseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$AddHouseModelCopyWithImpl<$Res, $Val extends AddHouseModel>
    implements $AddHouseModelCopyWith<$Res> {
  _$AddHouseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddHouseModelCopyWith<$Res>
    implements $AddHouseModelCopyWith<$Res> {
  factory _$$_AddHouseModelCopyWith(
          _$_AddHouseModel value, $Res Function(_$_AddHouseModel) then) =
      __$$_AddHouseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$_AddHouseModelCopyWithImpl<$Res>
    extends _$AddHouseModelCopyWithImpl<$Res, _$_AddHouseModel>
    implements _$$_AddHouseModelCopyWith<$Res> {
  __$$_AddHouseModelCopyWithImpl(
      _$_AddHouseModel _value, $Res Function(_$_AddHouseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_AddHouseModel(
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
class _$_AddHouseModel implements _AddHouseModel {
  const _$_AddHouseModel(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message});

  factory _$_AddHouseModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddHouseModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'AddHouseModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddHouseModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddHouseModelCopyWith<_$_AddHouseModel> get copyWith =>
      __$$_AddHouseModelCopyWithImpl<_$_AddHouseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddHouseModelToJson(
      this,
    );
  }
}

abstract class _AddHouseModel implements AddHouseModel {
  const factory _AddHouseModel(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message}) = _$_AddHouseModel;

  factory _AddHouseModel.fromJson(Map<String, dynamic> json) =
      _$_AddHouseModel.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_AddHouseModelCopyWith<_$_AddHouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
