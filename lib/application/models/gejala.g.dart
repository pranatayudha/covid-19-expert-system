// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gejala.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Gejala _$$_GejalaFromJson(Map json) => $checkedCreate(
      r'_$_Gejala',
      json,
      ($checkedConvert) {
        final val = _$_Gejala(
          id: $checkedConvert('id', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          value: $checkedConvert('value', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_GejalaToJson(_$_Gejala instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
    };
