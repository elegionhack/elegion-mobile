// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      id: json['_id'] as String,
      type: json['type'] as String,
      bonus: (json['bonus'] as num).toDouble(),
      description: json['description'] as String,
      participantsList: (json['participantsList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      imgUrl: json['imgUrl'] as String,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'bonus': instance.bonus,
      'description': instance.description,
      'participantsList': instance.participantsList,
      'imgUrl': instance.imgUrl,
    };
