// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riwayat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Riwayat _$$_RiwayatFromJson(Map json) => $checkedCreate(
      r'_$_Riwayat',
      json,
      ($checkedConvert) {
        final val = _$_Riwayat(
          id: $checkedConvert('id', (v) => v as String?),
          fullname: $checkedConvert('fullname', (v) => v as String?),
          dob: $checkedConvert('dob', (v) => v as String?),
          virusName: $checkedConvert('virusName', (v) => v as String?),
          code: $checkedConvert('code', (v) => v as String?),
          subVarian: $checkedConvert('subVarian', (v) => v as String?),
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_RiwayatToJson(_$_Riwayat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'dob': instance.dob,
      'virusName': instance.virusName,
      'code': instance.code,
      'subVarian': instance.subVarian,
      'createdAt': instance.createdAt,
    };
