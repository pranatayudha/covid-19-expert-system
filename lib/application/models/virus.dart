import 'package:freezed_annotation/freezed_annotation.dart';

part 'virus.freezed.dart';
part 'virus.g.dart';

@freezed
class Virus with _$Virus {
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory Virus({
    String? id,
    String? name,
    String? code,
    String? subvarian,
  }) = _Virus;

  factory Virus.fromJson(Map<String, dynamic> json) => _$VirusFromJson(json);
}
