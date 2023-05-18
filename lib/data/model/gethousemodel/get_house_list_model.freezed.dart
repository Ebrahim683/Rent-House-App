// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_house_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetHouseListModel _$GetHouseListModelFromJson(Map<String, dynamic> json) {
  return _GetHouseListModel.fromJson(json);
}

/// @nodoc
mixin _$GetHouseListModel {
// ignore:
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError; // ignore:
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError; // ignore:
  @JsonKey(name: 'data')
  List<GetHouseModel>? get getHouseModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetHouseListModelCopyWith<GetHouseListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetHouseListModelCopyWith<$Res> {
  factory $GetHouseListModelCopyWith(
          GetHouseListModel value, $Res Function(GetHouseListModel) then) =
      _$GetHouseListModelCopyWithImpl<$Res, GetHouseListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<GetHouseModel>? getHouseModel});
}

/// @nodoc
class _$GetHouseListModelCopyWithImpl<$Res, $Val extends GetHouseListModel>
    implements $GetHouseListModelCopyWith<$Res> {
  _$GetHouseListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? getHouseModel = freezed,
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
      getHouseModel: freezed == getHouseModel
          ? _value.getHouseModel
          : getHouseModel // ignore: cast_nullable_to_non_nullable
              as List<GetHouseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetHouseListModelCopyWith<$Res>
    implements $GetHouseListModelCopyWith<$Res> {
  factory _$$_GetHouseListModelCopyWith(_$_GetHouseListModel value,
          $Res Function(_$_GetHouseListModel) then) =
      __$$_GetHouseListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<GetHouseModel>? getHouseModel});
}

/// @nodoc
class __$$_GetHouseListModelCopyWithImpl<$Res>
    extends _$GetHouseListModelCopyWithImpl<$Res, _$_GetHouseListModel>
    implements _$$_GetHouseListModelCopyWith<$Res> {
  __$$_GetHouseListModelCopyWithImpl(
      _$_GetHouseListModel _value, $Res Function(_$_GetHouseListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? getHouseModel = freezed,
  }) {
    return _then(_$_GetHouseListModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getHouseModel: freezed == getHouseModel
          ? _value._getHouseModel
          : getHouseModel // ignore: cast_nullable_to_non_nullable
              as List<GetHouseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetHouseListModel implements _GetHouseListModel {
  const _$_GetHouseListModel(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<GetHouseModel>? getHouseModel})
      : _getHouseModel = getHouseModel;

  factory _$_GetHouseListModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetHouseListModelFromJson(json);

// ignore:
  @override
  @JsonKey(name: 'status')
  final String? status;
// ignore:
  @override
  @JsonKey(name: 'message')
  final String? message;
// ignore:
  final List<GetHouseModel>? _getHouseModel;
// ignore:
  @override
  @JsonKey(name: 'data')
  List<GetHouseModel>? get getHouseModel {
    final value = _getHouseModel;
    if (value == null) return null;
    if (_getHouseModel is EqualUnmodifiableListView) return _getHouseModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetHouseListModel(status: $status, message: $message, getHouseModel: $getHouseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetHouseListModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._getHouseModel, _getHouseModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_getHouseModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetHouseListModelCopyWith<_$_GetHouseListModel> get copyWith =>
      __$$_GetHouseListModelCopyWithImpl<_$_GetHouseListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetHouseListModelToJson(
      this,
    );
  }
}

abstract class _GetHouseListModel implements GetHouseListModel {
  const factory _GetHouseListModel(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<GetHouseModel>? getHouseModel}) =
      _$_GetHouseListModel;

  factory _GetHouseListModel.fromJson(Map<String, dynamic> json) =
      _$_GetHouseListModel.fromJson;

  @override // ignore:
  @JsonKey(name: 'status')
  String? get status;
  @override // ignore:
  @JsonKey(name: 'message')
  String? get message;
  @override // ignore:
  @JsonKey(name: 'data')
  List<GetHouseModel>? get getHouseModel;
  @override
  @JsonKey(ignore: true)
  _$$_GetHouseListModelCopyWith<_$_GetHouseListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
