// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'virus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Virus _$$_VirusFromJson(Map json) => $checkedCreate(
      r'_$_Virus',
      json,
      ($checkedConvert) {
        final val = _$_Virus(
          id: $checkedConvert('id', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          code: $checkedConvert('code', (v) => v as String?),
          subvarian: $checkedConvert('subvarian', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_VirusToJson(_$_Virus instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'subvarian': instance.subvarian,
    };
