// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get fullname => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get dob => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get gender => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get phoneNum => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get type => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? fullname,
      @HiveField(2) String? dob,
      @HiveField(3) String? gender,
      @HiveField(4) String? email,
      @HiveField(5) String? phoneNum,
      @HiveField(6) String? type,
      @HiveField(7) String? accessToken});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? phoneNum = freezed,
    Object? type = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNum: phoneNum == freezed
          ? _value.phoneNum
          : phoneNum // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? fullname,
      @HiveField(2) String? dob,
      @HiveField(3) String? gender,
      @HiveField(4) String? email,
      @HiveField(5) String? phoneNum,
      @HiveField(6) String? type,
      @HiveField(7) String? accessToken});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? phoneNum = freezed,
    Object? type = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNum: phoneNum == freezed
          ? _value.phoneNum
          : phoneNum // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1, adapterName: 'UserAdapter')
@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_User implements _User {
  _$_User(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.fullname,
      @HiveField(2) required this.dob,
      @HiveField(3) required this.gender,
      @HiveField(4) required this.email,
      @HiveField(5) required this.phoneNum,
      @HiveField(6) required this.type,
      @HiveField(7) required this.accessToken});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? fullname;
  @override
  @HiveField(2)
  final String? dob;
  @override
  @HiveField(3)
  final String? gender;
  @override
  @HiveField(4)
  final String? email;
  @override
  @HiveField(5)
  final String? phoneNum;
  @override
  @HiveField(6)
  final String? type;
  @override
  @HiveField(7)
  final String? accessToken;

  @override
  String toString() {
    return 'User(id: $id, fullname: $fullname, dob: $dob, gender: $gender, email: $email, phoneNum: $phoneNum, type: $type, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phoneNum, phoneNum) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(dob),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phoneNum),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(accessToken));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {@HiveField(0) required final String? id,
      @HiveField(1) required final String? fullname,
      @HiveField(2) required final String? dob,
      @HiveField(3) required final String? gender,
      @HiveField(4) required final String? email,
      @HiveField(5) required final String? phoneNum,
      @HiveField(6) required final String? type,
      @HiveField(7) required final String? accessToken}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get fullname;
  @override
  @HiveField(2)
  String? get dob;
  @override
  @HiveField(3)
  String? get gender;
  @override
  @HiveField(4)
  String? get email;
  @override
  @HiveField(5)
  String? get phoneNum;
  @override
  @HiveField(6)
  String? get type;
  @override
  @HiveField(7)
  String? get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
