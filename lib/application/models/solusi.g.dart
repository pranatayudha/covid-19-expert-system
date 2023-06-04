// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solusi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Solusi _$$_SolusiFromJson(Map json) => $checkedCreate(
      r'_$_Solusi',
      json,
      ($checkedConvert) {
        final val = _$_Solusi(
          name: $checkedConvert('name', (v) => v as String?),
          prevention: $checkedConvert('prevention',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          treatment: $checkedConvert('treatment',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          drug: $checkedConvert('drug',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SolusiToJson(_$_Solusi instance) => <String, dynamic>{
      'name': instance.name,
      'prevention': instance.prevention,
      'treatment': instance.treatment,
      'drug': instance.drug,
    };
