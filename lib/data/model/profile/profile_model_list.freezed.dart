// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModelList _$ProfileModelListFromJson(Map<String, dynamic> json) {
  return _ProfileModelList.fromJson(json);
}

/// @nodoc
mixin _$ProfileModelList {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<ProfileModel>? get profileModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelListCopyWith<ProfileModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelListCopyWith<$Res> {
  factory $ProfileModelListCopyWith(
          ProfileModelList value, $Res Function(ProfileModelList) then) =
      _$ProfileModelListCopyWithImpl<$Res, ProfileModelList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<ProfileModel>? profileModel});
}

/// @nodoc
class _$ProfileModelListCopyWithImpl<$Res, $Val extends ProfileModelList>
    implements $ProfileModelListCopyWith<$Res> {
  _$ProfileModelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? profileModel = freezed,
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
      profileModel: freezed == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as List<ProfileModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileModelListCopyWith<$Res>
    implements $ProfileModelListCopyWith<$Res> {
  factory _$$_ProfileModelListCopyWith(
          _$_ProfileModelList value, $Res Function(_$_ProfileModelList) then) =
      __$$_ProfileModelListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<ProfileModel>? profileModel});
}

/// @nodoc
class __$$_ProfileModelListCopyWithImpl<$Res>
    extends _$ProfileModelListCopyWithImpl<$Res, _$_ProfileModelList>
    implements _$$_ProfileModelListCopyWith<$Res> {
  __$$_ProfileModelListCopyWithImpl(
      _$_ProfileModelList _value, $Res Function(_$_ProfileModelList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? profileModel = freezed,
  }) {
    return _then(_$_ProfileModelList(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      profileModel: freezed == profileModel
          ? _value._profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as List<ProfileModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileModelList implements _ProfileModelList {
  const _$_ProfileModelList(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<ProfileModel>? profileModel})
      : _profileModel = profileModel;

  factory _$_ProfileModelList.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileModelListFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<ProfileModel>? _profileModel;
  @override
  @JsonKey(name: 'data')
  List<ProfileModel>? get profileModel {
    final value = _profileModel;
    if (value == null) return null;
    if (_profileModel is EqualUnmodifiableListView) return _profileModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileModelList(status: $status, message: $message, profileModel: $profileModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileModelList &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._profileModel, _profileModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_profileModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileModelListCopyWith<_$_ProfileModelList> get copyWith =>
      __$$_ProfileModelListCopyWithImpl<_$_ProfileModelList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileModelListToJson(
      this,
    );
  }
}

abstract class _ProfileModelList implements ProfileModelList {
  const factory _ProfileModelList(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<ProfileModel>? profileModel}) =
      _$_ProfileModelList;

  factory _ProfileModelList.fromJson(Map<String, dynamic> json) =
      _$_ProfileModelList.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<ProfileModel>? get profileModel;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileModelListCopyWith<_$_ProfileModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_pic')
  String? get profilePic => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_token')
  String? get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'profile_pic') String? profilePic,
      @JsonKey(name: 'device_token') String? deviceToken});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? profilePic = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$_ProfileModelCopyWith(
          _$_ProfileModel value, $Res Function(_$_ProfileModel) then) =
      __$$_ProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'profile_pic') String? profilePic,
      @JsonKey(name: 'device_token') String? deviceToken});
}

/// @nodoc
class __$$_ProfileModelCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$_ProfileModel>
    implements _$$_ProfileModelCopyWith<$Res> {
  __$$_ProfileModelCopyWithImpl(
      _$_ProfileModel _value, $Res Function(_$_ProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? profilePic = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_$_ProfileModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
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
class _$_ProfileModel implements _ProfileModel {
  const _$_ProfileModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'profile_pic') this.profilePic,
      @JsonKey(name: 'device_token') this.deviceToken});

  factory _$_ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'profile_pic')
  final String? profilePic;
  @override
  @JsonKey(name: 'device_token')
  final String? deviceToken;

  @override
  String toString() {
    return 'ProfileModel(id: $id, name: $name, phoneNumber: $phoneNumber, email: $email, role: $role, profilePic: $profilePic, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, phoneNumber, email, role, profilePic, deviceToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      __$$_ProfileModelCopyWithImpl<_$_ProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileModelToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'phone_number') final String? phoneNumber,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'role') final String? role,
          @JsonKey(name: 'profile_pic') final String? profilePic,
          @JsonKey(name: 'device_token') final String? deviceToken}) =
      _$_ProfileModel;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'profile_pic')
  String? get profilePic;
  @override
  @JsonKey(name: 'device_token')
  String? get deviceToken;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
