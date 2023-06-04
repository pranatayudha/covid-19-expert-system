import 'package:freezed_annotation/freezed_annotation.dart';

part 'gejala.freezed.dart';
part 'gejala.g.dart';

@freezed
class Gejala with _$Gejala {
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory Gejala({
    String? id,
    String? name,
    bool? value,
  }) = _Gejala;

  factory Gejala.fromJson(Map<String, dynamic> json) => _$GejalaFromJson(json);
}
