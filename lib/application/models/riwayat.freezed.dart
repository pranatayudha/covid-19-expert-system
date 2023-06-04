// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'riwayat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Riwayat _$RiwayatFromJson(Map<String, dynamic> json) {
  return _Riwayat.fromJson(json);
}

/// @nodoc
mixin _$Riwayat {
  String? get id => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get virusName => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get subVarian => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiwayatCopyWith<Riwayat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiwayatCopyWith<$Res> {
  factory $RiwayatCopyWith(Riwayat value, $Res Function(Riwayat) then) =
      _$RiwayatCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? fullname,
      String? dob,
      String? virusName,
      String? code,
      String? subVarian,
      String? createdAt});
}

/// @nodoc
class _$RiwayatCopyWithImpl<$Res> implements $RiwayatCopyWith<$Res> {
  _$RiwayatCopyWithImpl(this._value, this._then);

  final Riwayat _value;
  // ignore: unused_field
  final $Res Function(Riwayat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? dob = freezed,
    Object? virusName = freezed,
    Object? code = freezed,
    Object? subVarian = freezed,
    Object? createdAt = freezed,
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
      virusName: virusName == freezed
          ? _value.virusName
          : virusName // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      subVarian: subVarian == freezed
          ? _value.subVarian
          : subVarian // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RiwayatCopyWith<$Res> implements $RiwayatCopyWith<$Res> {
  factory _$$_RiwayatCopyWith(
          _$_Riwayat value, $Res Function(_$_Riwayat) then) =
      __$$_RiwayatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? fullname,
      String? dob,
      String? virusName,
      String? code,
      String? subVarian,
      String? createdAt});
}

/// @nodoc
class __$$_RiwayatCopyWithImpl<$Res> extends _$RiwayatCopyWithImpl<$Res>
    implements _$$_RiwayatCopyWith<$Res> {
  __$$_RiwayatCopyWithImpl(_$_Riwayat _value, $Res Function(_$_Riwayat) _then)
      : super(_value, (v) => _then(v as _$_Riwayat));

  @override
  _$_Riwayat get _value => super._value as _$_Riwayat;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? dob = freezed,
    Object? virusName = freezed,
    Object? code = freezed,
    Object? subVarian = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Riwayat(
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
      virusName: virusName == freezed
          ? _value.virusName
          : virusName // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      subVarian: subVarian == freezed
          ? _value.subVarian
          : subVarian // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_Riwayat implements _Riwayat {
  _$_Riwayat(
      {this.id,
      this.fullname,
      this.dob,
      this.virusName,
      this.code,
      this.subVarian,
      this.createdAt});

  factory _$_Riwayat.fromJson(Map<String, dynamic> json) =>
      _$$_RiwayatFromJson(json);

  @override
  final String? id;
  @override
  final String? fullname;
  @override
  final String? dob;
  @override
  final String? virusName;
  @override
  final String? code;
  @override
  final String? subVarian;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'Riwayat(id: $id, fullname: $fullname, dob: $dob, virusName: $virusName, code: $code, subVarian: $subVarian, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Riwayat &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality().equals(other.virusName, virusName) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.subVarian, subVarian) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(dob),
      const DeepCollectionEquality().hash(virusName),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(subVarian),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_RiwayatCopyWith<_$_Riwayat> get copyWith =>
      __$$_RiwayatCopyWithImpl<_$_Riwayat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RiwayatToJson(
      this,
    );
  }
}

abstract class _Riwayat implements Riwayat {
  factory _Riwayat(
      {final String? id,
      final String? fullname,
      final String? dob,
      final String? virusName,
      final String? code,
      final String? subVarian,
      final String? createdAt}) = _$_Riwayat;

  factory _Riwayat.fromJson(Map<String, dynamic> json) = _$_Riwayat.fromJson;

  @override
  String? get id;
  @override
  String? get fullname;
  @override
  String? get dob;
  @override
  String? get virusName;
  @override
  String? get code;
  @override
  String? get subVarian;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_RiwayatCopyWith<_$_Riwayat> get copyWith =>
      throw _privateConstructorUsedError;
}
