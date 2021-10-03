import 'dart:convert';

import 'package:elegion/models/profile/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  Project({
    required this.id,
    required this.title,
    required this.customer,
    required this.trackerLink,
    required this.googleCalendarLink,
    required this.telegramLink,
    required this.description,
    required this.photo,
    required this.workers,
  });

  @JsonKey(name: '_id')
  final String id;
  final String title;
  final String customer;
  final String description;
  final List<Profile> workers;
  final String trackerLink;
  final String googleCalendarLink;
  final String telegramLink;
  @JsonKey(required: false)
  final String? photo;

  // List<Profile?> get workersModels {
  //   return workers.map((e) {
  //     try {
  //       final jsonData = _codec.decode(e) as Map<String, dynamic>;
  //       return Profile.fromJson(jsonData);
  //     } on Exception catch (e) {
  //       debugPrint('$e');
  //       return null;
  //     }
  //   }).toList()
  //     ..remove(null);
  // }

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);

  @override
  String toString() {
    return 'Project(id: $id, title: $title, customer: $customer, description: $description, workers: $workers, trackerLink: $trackerLink, googleCalendarLink: $googleCalendarLink, telegramLink: $telegramLink)';
  }
}
