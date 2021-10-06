// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      id: json['_id'] as String,
      login: json['login'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      position: json['position'] as String,
      fullName: json['fullName'] as String,
      role: json['role'] as String,
      status: json['status'] as String,
      bonuses: (json['bonuses'] as num).toDouble(),
      frozenBonuses: (json['frozenBonuses'] as num).toDouble(),
      avatarUrl: json['avatarUrl'] as String?,
      telegramLink: json['telegramLink'] as String?,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      '_id': instance.id,
      'login': instance.login,
      'birthday': instance.birthday.toIso8601String(),
      'position': instance.position,
      'fullName': instance.fullName,
      'role': instance.role,
      'status': instance.status,
      'bonuses': instance.bonuses,
      'frozenBonuses': instance.frozenBonuses,
      'avatarUrl': instance.avatarUrl,
      'telegramLink': instance.telegramLink,
    };
