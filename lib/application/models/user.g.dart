// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<_$_User> {
  @override
  final int typeId = 1;

  @override
  _$_User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_User(
      id: fields[0] as String?,
      fullname: fields[1] as String?,
      dob: fields[2] as String?,
      gender: fields[3] as String?,
      email: fields[4] as String?,
      phoneNum: fields[5] as String?,
      type: fields[6] as String?,
      accessToken: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_User obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fullname)
      ..writeByte(2)
      ..write(obj.dob)
      ..writeByte(3)
      ..write(obj.gender)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.phoneNum)
      ..writeByte(6)
      ..write(obj.type)
      ..writeByte(7)
      ..write(obj.accessToken);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map json) => $checkedCreate(
      r'_$_User',
      json,
      ($checkedConvert) {
        final val = _$_User(
          id: $checkedConvert('id', (v) => v as String?),
          fullname: $checkedConvert('fullname', (v) => v as String?),
          dob: $checkedConvert('dob', (v) => v as String?),
          gender: $checkedConvert('gender', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phoneNum: $checkedConvert('phoneNum', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          accessToken: $checkedConvert('accessToken', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'dob': instance.dob,
      'gender': instance.gender,
      'email': instance.email,
      'phoneNum': instance.phoneNum,
      'type': instance.type,
      'accessToken': instance.accessToken,
    };
