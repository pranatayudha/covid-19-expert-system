// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riwayat_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RiwayatDetail _$$_RiwayatDetailFromJson(Map json) => $checkedCreate(
      r'_$_RiwayatDetail',
      json,
      ($checkedConvert) {
        final val = _$_RiwayatDetail(
          id: $checkedConvert('id', (v) => v as String?),
          fullname: $checkedConvert('fullname', (v) => v as String?),
          dob: $checkedConvert('dob', (v) => v as String?),
          virusName: $checkedConvert('virusName', (v) => v as String?),
          code: $checkedConvert('code', (v) => v as String?),
          subVarian: $checkedConvert('subVarian', (v) => v as String?),
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
          solution: $checkedConvert(
              'solution',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Solusi.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_RiwayatDetailToJson(_$_RiwayatDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'dob': instance.dob,
      'virusName': instance.virusName,
      'code': instance.code,
      'subVarian': instance.subVarian,
      'createdAt': instance.createdAt,
      'solution': instance.solution?.map((e) => e.toJson()).toList(),
    };
