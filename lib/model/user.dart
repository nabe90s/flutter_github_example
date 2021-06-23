import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String login;
  int id;
  String nodeId;
  String avatarUrl;
  String url;
  String bio;
  String createdAt;
  String updatedAt;
  String name;

  User(
      {required this.login,
      required this.id,
      required this.nodeId,
      required this.avatarUrl,
      required this.url,
      required this.bio,
      required this.createdAt,
      required this.updatedAt,
      required this.name});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
