// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'solusi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Solusi _$SolusiFromJson(Map<String, dynamic> json) {
  return _Solusi.fromJson(json);
}

/// @nodoc
mixin _$Solusi {
  String? get name => throw _privateConstructorUsedError;
  List<String>? get prevention => throw _privateConstructorUsedError;
  List<String>? get treatment => throw _privateConstructorUsedError;
  List<String>? get drug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SolusiCopyWith<Solusi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolusiCopyWith<$Res> {
  factory $SolusiCopyWith(Solusi value, $Res Function(Solusi) then) =
      _$SolusiCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      List<String>? prevention,
      List<String>? treatment,
      List<String>? drug});
}

/// @nodoc
class _$SolusiCopyWithImpl<$Res> implements $SolusiCopyWith<$Res> {
  _$SolusiCopyWithImpl(this._value, this._then);

  final Solusi _value;
  // ignore: unused_field
  final $Res Function(Solusi) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? prevention = freezed,
    Object? treatment = freezed,
    Object? drug = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      prevention: prevention == freezed
          ? _value.prevention
          : prevention // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      treatment: treatment == freezed
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      drug: drug == freezed
          ? _value.drug
          : drug // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_SolusiCopyWith<$Res> implements $SolusiCopyWith<$Res> {
  factory _$$_SolusiCopyWith(_$_Solusi value, $Res Function(_$_Solusi) then) =
      __$$_SolusiCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      List<String>? prevention,
      List<String>? treatment,
      List<String>? drug});
}

/// @nodoc
class __$$_SolusiCopyWithImpl<$Res> extends _$SolusiCopyWithImpl<$Res>
    implements _$$_SolusiCopyWith<$Res> {
  __$$_SolusiCopyWithImpl(_$_Solusi _value, $Res Function(_$_Solusi) _then)
      : super(_value, (v) => _then(v as _$_Solusi));

  @override
  _$_Solusi get _value => super._value as _$_Solusi;

  @override
  $Res call({
    Object? name = freezed,
    Object? prevention = freezed,
    Object? treatment = freezed,
    Object? drug = freezed,
  }) {
    return _then(_$_Solusi(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      prevention: prevention == freezed
          ? _value._prevention
          : prevention // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      treatment: treatment == freezed
          ? _value._treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      drug: drug == freezed
          ? _value._drug
          : drug // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_Solusi implements _Solusi {
  _$_Solusi(
      {this.name,
      final List<String>? prevention,
      final List<String>? treatment,
      final List<String>? drug})
      : _prevention = prevention,
        _treatment = treatment,
        _drug = drug;

  factory _$_Solusi.fromJson(Map<String, dynamic> json) =>
      _$$_SolusiFromJson(json);

  @override
  final String? name;
  final List<String>? _prevention;
  @override
  List<String>? get prevention {
    final value = _prevention;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _treatment;
  @override
  List<String>? get treatment {
    final value = _treatment;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _drug;
  @override
  List<String>? get drug {
    final value = _drug;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Solusi(name: $name, prevention: $prevention, treatment: $treatment, drug: $drug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Solusi &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._prevention, _prevention) &&
            const DeepCollectionEquality()
                .equals(other._treatment, _treatment) &&
            const DeepCollectionEquality().equals(other._drug, _drug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_prevention),
      const DeepCollectionEquality().hash(_treatment),
      const DeepCollectionEquality().hash(_drug));

  @JsonKey(ignore: true)
  @override
  _$$_SolusiCopyWith<_$_Solusi> get copyWith =>
      __$$_SolusiCopyWithImpl<_$_Solusi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SolusiToJson(
      this,
    );
  }
}

abstract class _Solusi implements Solusi {
  factory _Solusi(
      {final String? name,
      final List<String>? prevention,
      final List<String>? treatment,
      final List<String>? drug}) = _$_Solusi;

  factory _Solusi.fromJson(Map<String, dynamic> json) = _$_Solusi.fromJson;

  @override
  String? get name;
  @override
  List<String>? get prevention;
  @override
  List<String>? get treatment;
  @override
  List<String>? get drug;
  @override
  @JsonKey(ignore: true)
  _$$_SolusiCopyWith<_$_Solusi> get copyWith =>
      throw _privateConstructorUsedError;
}
