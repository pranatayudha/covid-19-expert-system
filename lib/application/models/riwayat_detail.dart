import 'package:freezed_annotation/freezed_annotation.dart';

import 'solusi.dart';

part 'riwayat_detail.freezed.dart';
part 'riwayat_detail.g.dart';

@freezed
class RiwayatDetail with _$RiwayatDetail {
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory RiwayatDetail({
    String? id,
    String? fullname,
    String? dob,
    String? virusName,
    String? code,
    String? subVarian,
    String? createdAt,
    List<Solusi>? solution,
  }) = _RiwayatDetail;

  factory RiwayatDetail.fromJson(Map<String, dynamic> json) =>
      _$RiwayatDetailFromJson(json);
}
