import 'package:freezed_annotation/freezed_annotation.dart';

part 'riwayat.freezed.dart';
part 'riwayat.g.dart';

@freezed
class Riwayat with _$Riwayat {
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory Riwayat({
    String? id,
    String? fullname,
    String? dob,
    String? virusName,
    String? code,
    String? subVarian,
    String? createdAt,
  }) = _Riwayat;

  factory Riwayat.fromJson(Map<String, dynamic> json) =>
      _$RiwayatFromJson(json);
}
