// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gejala.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Gejala _$GejalaFromJson(Map<String, dynamic> json) {
  return _Gejala.fromJson(json);
}

/// @nodoc
mixin _$Gejala {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GejalaCopyWith<Gejala> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GejalaCopyWith<$Res> {
  factory $GejalaCopyWith(Gejala value, $Res Function(Gejala) then) =
      _$GejalaCopyWithImpl<$Res>;
  $Res call({String? id, String? name, bool? value});
}

/// @nodoc
class _$GejalaCopyWithImpl<$Res> implements $GejalaCopyWith<$Res> {
  _$GejalaCopyWithImpl(this._value, this._then);

  final Gejala _value;
  // ignore: unused_field
  final $Res Function(Gejala) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
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
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_GejalaCopyWith<$Res> implements $GejalaCopyWith<$Res> {
  factory _$$_GejalaCopyWith(_$_Gejala value, $Res Function(_$_Gejala) then) =
      __$$_GejalaCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name, bool? value});
}

/// @nodoc
class __$$_GejalaCopyWithImpl<$Res> extends _$GejalaCopyWithImpl<$Res>
    implements _$$_GejalaCopyWith<$Res> {
  __$$_GejalaCopyWithImpl(_$_Gejala _value, $Res Function(_$_Gejala) _then)
      : super(_value, (v) => _then(v as _$_Gejala));

  @override
  _$_Gejala get _value => super._value as _$_Gejala;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Gejala(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_Gejala implements _Gejala {
  _$_Gejala({this.id, this.name, this.value});

  factory _$_Gejala.fromJson(Map<String, dynamic> json) =>
      _$$_GejalaFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final bool? value;

  @override
  String toString() {
    return 'Gejala(id: $id, name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gejala &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_GejalaCopyWith<_$_Gejala> get copyWith =>
      __$$_GejalaCopyWithImpl<_$_Gejala>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GejalaToJson(
      this,
    );
  }
}

abstract class _Gejala implements Gejala {
  factory _Gejala({final String? id, final String? name, final bool? value}) =
      _$_Gejala;

  factory _Gejala.fromJson(Map<String, dynamic> json) = _$_Gejala.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  bool? get value;
  @override
  @JsonKey(ignore: true)
  _$$_GejalaCopyWith<_$_Gejala> get copyWith =>
      throw _privateConstructorUsedError;
}
