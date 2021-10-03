import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

@JsonSerializable()
class Event {
  const Event({
    required this.id,
    required this.type,
    required this.bonus,
    required this.description,
    required this.participantsList,
    required this.imgUrl,
    required this.title,
  });

  @JsonKey(name: '_id')
  final String id;
  final String type;
  final double bonus;
  final String description;
  final List<String> participantsList;
  final String imgUrl;
  final String title;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  String toString() {
    return 'Event(id: $id, type: $type, bonus: $bonus, description: $description, participantsList: $participantsList, imgUrl: $imgUrl)';
  }
}
