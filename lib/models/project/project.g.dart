// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      id: json['_id'] as String,
      title: json['title'] as String,
      customer: json['customer'] as String,
      workers:
          (json['workers'] as List<dynamic>).map((e) => e as String).toList(),
      trackerLink: json['trackerLink'] as String,
      googleCalendarLink: json['googleCalendarLink'] as String,
      telegramLink: json['telegramLink'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'customer': instance.customer,
      'description': instance.description,
      'workers': instance.workers,
      'trackerLink': instance.trackerLink,
      'googleCalendarLink': instance.googleCalendarLink,
      'telegramLink': instance.telegramLink,
    };
