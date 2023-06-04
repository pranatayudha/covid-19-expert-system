// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @HiveType(typeId: 1, adapterName: 'UserAdapter')
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory User({
    @HiveField(0) required String? id,
    @HiveField(1) required String? fullname,
    @HiveField(2) required String? dob,
    @HiveField(3) required String? gender,
    @HiveField(4) required String? email,
    @HiveField(5) required String? phoneNum,
    @HiveField(6) required String? type,
    @HiveField(7) required String? accessToken,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
