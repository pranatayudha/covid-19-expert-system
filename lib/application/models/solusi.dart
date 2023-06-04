// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'solusi.freezed.dart';
part 'solusi.g.dart';

@freezed
class Solusi with _$Solusi {
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory Solusi({
    String? name,
    List<String>? prevention,
    List<String>? treatment,
    List<String>? drug,
  }) = _Solusi;

  factory Solusi.fromJson(Map<String, dynamic> json) => _$SolusiFromJson(json);
}
