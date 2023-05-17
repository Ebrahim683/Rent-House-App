// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _LoginModel.fromJson(json);
}

/// @nodoc
mixin _$LoginModel {
 
  @JsonKey(name: 'status')
  String? get status =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'message')
  String? get message =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'data')
  List<LoginDetails>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res, LoginModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<LoginDetails>? data});
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res, $Val extends LoginModel>
    implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LoginDetails>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginModelCopyWith<$Res>
    implements $LoginModelCopyWith<$Res> {
  factory _$$_LoginModelCopyWith(
          _$_LoginModel value, $Res Function(_$_LoginModel) then) =
      __$$_LoginModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<LoginDetails>? data});
}

/// @nodoc
class __$$_LoginModelCopyWithImpl<$Res>
    extends _$LoginModelCopyWithImpl<$Res, _$_LoginModel>
    implements _$$_LoginModelCopyWith<$Res> {
  __$$_LoginModelCopyWithImpl(
      _$_LoginModel _value, $Res Function(_$_LoginModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_LoginModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LoginDetails>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginModel implements _LoginModel {
  const _$_LoginModel(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<LoginDetails>? data})
      : _data = data;

  factory _$_LoginModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginModelFromJson(json);

 
  @override
  @JsonKey(name: 'status')
  final String? status;
 
  @override
  @JsonKey(name: 'message')
  final String? message;
 
  final List<LoginDetails>? _data;
 
  @override
  @JsonKey(name: 'data')
  List<LoginDetails>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LoginModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginModelCopyWith<_$_LoginModel> get copyWith =>
      __$$_LoginModelCopyWithImpl<_$_LoginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginModelToJson(
      this,
    );
  }
}

abstract class _LoginModel implements LoginModel {
  const factory _LoginModel(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final List<LoginDetails>? data}) = _$_LoginModel;

  factory _LoginModel.fromJson(Map<String, dynamic> json) =
      _$_LoginModel.fromJson;

  @override  
  @JsonKey(name: 'status')
  String? get status;
  @override  
  @JsonKey(name: 'message')
  String? get message;
  @override  
  @JsonKey(name: 'data')
  List<LoginDetails>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoginModelCopyWith<_$_LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginDetails _$LoginDetailsFromJson(Map<String, dynamic> json) {
  return _LoginDetails.fromJson(json);
}

/// @nodoc
mixin _$LoginDetails {
 
  @JsonKey(name: 'phone_number')
  String? get phoneNumber =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'name')
  String? get name =>
      throw _privateConstructorUsedError;  
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDetailsCopyWith<LoginDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDetailsCopyWith<$Res> {
  factory $LoginDetailsCopyWith(
          LoginDetails value, $Res Function(LoginDetails) then) =
      _$LoginDetailsCopyWithImpl<$Res, LoginDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'role') String? role});
}

/// @nodoc
class _$LoginDetailsCopyWithImpl<$Res, $Val extends LoginDetails>
    implements $LoginDetailsCopyWith<$Res> {
  _$LoginDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginDetailsCopyWith<$Res>
    implements $LoginDetailsCopyWith<$Res> {
  factory _$$_LoginDetailsCopyWith(
          _$_LoginDetails value, $Res Function(_$_LoginDetails) then) =
      __$$_LoginDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'role') String? role});
}

/// @nodoc
class __$$_LoginDetailsCopyWithImpl<$Res>
    extends _$LoginDetailsCopyWithImpl<$Res, _$_LoginDetails>
    implements _$$_LoginDetailsCopyWith<$Res> {
  __$$_LoginDetailsCopyWithImpl(
      _$_LoginDetails _value, $Res Function(_$_LoginDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? role = freezed,
  }) {
    return _then(_$_LoginDetails(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDetails implements _LoginDetails {
  const _$_LoginDetails(
      {@JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'role') this.role});

  factory _$_LoginDetails.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDetailsFromJson(json);

 
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
 
  @override
  @JsonKey(name: 'name')
  final String? name;
 
  @override
  @JsonKey(name: 'role')
  final String? role;

  @override
  String toString() {
    return 'LoginDetails(phoneNumber: $phoneNumber, name: $name, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginDetails &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, name, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginDetailsCopyWith<_$_LoginDetails> get copyWith =>
      __$$_LoginDetailsCopyWithImpl<_$_LoginDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDetailsToJson(
      this,
    );
  }
}

abstract class _LoginDetails implements LoginDetails {
  const factory _LoginDetails(
      {@JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'role') final String? role}) = _$_LoginDetails;

  factory _LoginDetails.fromJson(Map<String, dynamic> json) =
      _$_LoginDetails.fromJson;

  @override  
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override  
  @JsonKey(name: 'name')
  String? get name;
  @override  
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(ignore: true)
  _$$_LoginDetailsCopyWith<_$_LoginDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
