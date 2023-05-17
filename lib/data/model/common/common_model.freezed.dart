// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonModel _$CommonModelFromJson(Map<String, dynamic> json) {
  return _CommonModel.fromJson(json);
}

/// @nodoc
mixin _$CommonModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonModelCopyWith<CommonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonModelCopyWith<$Res> {
  factory $CommonModelCopyWith(
          CommonModel value, $Res Function(CommonModel) then) =
      _$CommonModelCopyWithImpl<$Res, CommonModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$CommonModelCopyWithImpl<$Res, $Val extends CommonModel>
    implements $CommonModelCopyWith<$Res> {
  _$CommonModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_CommonModelCopyWith<$Res>
    implements $CommonModelCopyWith<$Res> {
  factory _$$_CommonModelCopyWith(
          _$_CommonModel value, $Res Function(_$_CommonModel) then) =
      __$$_CommonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$_CommonModelCopyWithImpl<$Res>
    extends _$CommonModelCopyWithImpl<$Res, _$_CommonModel>
    implements _$$_CommonModelCopyWith<$Res> {
  __$$_CommonModelCopyWithImpl(
      _$_CommonModel _value, $Res Function(_$_CommonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_CommonModel(
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
class _$_CommonModel implements _CommonModel {
  const _$_CommonModel(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message});

  factory _$_CommonModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommonModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'CommonModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommonModelCopyWith<_$_CommonModel> get copyWith =>
      __$$_CommonModelCopyWithImpl<_$_CommonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonModelToJson(
      this,
    );
  }
}

abstract class _CommonModel implements CommonModel {
  const factory _CommonModel(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message}) = _$_CommonModel;

  factory _CommonModel.fromJson(Map<String, dynamic> json) =
      _$_CommonModel.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_CommonModelCopyWith<_$_CommonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
