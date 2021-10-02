import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  const Profile({
    required this.id,
    required this.login,
    required this.birthday,
    required this.position,
    required this.fullName,
    required this.role,
    required this.status,
    required this.bonuses,
    required this.frozenBonuses,
    required this.avatarUrl,
  });

  @JsonKey(name: '_id')
  final String id;
  final String login;
  final DateTime birthday;
  final String position;
  final String fullName;
  final String role;
  final String status;
  final double bonuses;
  final double frozenBonuses;
  @JsonKey(required: false)
  final String? avatarUrl;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
