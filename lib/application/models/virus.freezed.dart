// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'virus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Virus _$VirusFromJson(Map<String, dynamic> json) {
  return _Virus.fromJson(json);
}

/// @nodoc
mixin _$Virus {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get subvarian => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VirusCopyWith<Virus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VirusCopyWith<$Res> {
  factory $VirusCopyWith(Virus value, $Res Function(Virus) then) =
      _$VirusCopyWithImpl<$Res>;
  $Res call({String? id, String? name, String? code, String? subvarian});
}

/// @nodoc
class _$VirusCopyWithImpl<$Res> implements $VirusCopyWith<$Res> {
  _$VirusCopyWithImpl(this._value, this._then);

  final Virus _value;
  // ignore: unused_field
  final $Res Function(Virus) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? subvarian = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      subvarian: subvarian == freezed
          ? _value.subvarian
          : subvarian // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_VirusCopyWith<$Res> implements $VirusCopyWith<$Res> {
  factory _$$_VirusCopyWith(_$_Virus value, $Res Function(_$_Virus) then) =
      __$$_VirusCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name, String? code, String? subvarian});
}

/// @nodoc
class __$$_VirusCopyWithImpl<$Res> extends _$VirusCopyWithImpl<$Res>
    implements _$$_VirusCopyWith<$Res> {
  __$$_VirusCopyWithImpl(_$_Virus _value, $Res Function(_$_Virus) _then)
      : super(_value, (v) => _then(v as _$_Virus));

  @override
  _$_Virus get _value => super._value as _$_Virus;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? subvarian = freezed,
  }) {
    return _then(_$_Virus(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      subvarian: subvarian == freezed
          ? _value.subvarian
          : subvarian // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_Virus implements _Virus {
  _$_Virus({this.id, this.name, this.code, this.subvarian});

  factory _$_Virus.fromJson(Map<String, dynamic> json) =>
      _$$_VirusFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? subvarian;

  @override
  String toString() {
    return 'Virus(id: $id, name: $name, code: $code, subvarian: $subvarian)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Virus &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.subvarian, subvarian));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(subvarian));

  @JsonKey(ignore: true)
  @override
  _$$_VirusCopyWith<_$_Virus> get copyWith =>
      __$$_VirusCopyWithImpl<_$_Virus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VirusToJson(
      this,
    );
  }
}

abstract class _Virus implements Virus {
  factory _Virus(
      {final String? id,
      final String? name,
      final String? code,
      final String? subvarian}) = _$_Virus;

  factory _Virus.fromJson(Map<String, dynamic> json) = _$_Virus.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get subvarian;
  @override
  @JsonKey(ignore: true)
  _$$_VirusCopyWith<_$_Virus> get copyWith =>
      throw _privateConstructorUsedError;
}
