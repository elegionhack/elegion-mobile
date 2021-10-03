import 'dart:convert';

import 'package:elegion/models/profile/profile.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  const Project({
    required this.id,
    required this.title,
    required this.customer,
    required this.trackerLink,
    required this.googleCalendarLink,
    required this.telegramLink,
    required this.description,
    required this.avatarUrl,
    required this.workers,
  });

  @JsonKey(name: '_id')
  final String id;
  final String title;
  final String customer;
  final String description;
  final List<String> workers;
  final String trackerLink;
  final String googleCalendarLink;
  final String telegramLink;
  @JsonKey(required: false)
  final String? avatarUrl;

  List<Profile> get workersModels =>
      workers.map((e) => Profile.fromJson(jsonDecode(e))).toList();

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);

  @override
  String toString() {
    return 'Project(id: $id, title: $title, customer: $customer, description: $description, workers: $workers, trackerLink: $trackerLink, googleCalendarLink: $googleCalendarLink, telegramLink: $telegramLink)';
  }
}
