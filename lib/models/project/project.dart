import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  const Project({
    required this.id,
    required this.title,
    required this.customer,
    required this.workers,
    required this.trackerLink,
    required this.googleCalendarLink,
    required this.telegramLink,
    required this.description,
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

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
