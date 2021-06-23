import 'package:json_annotation/json_annotation.dart';

part 'repo.g.dart';

@JsonSerializable()
class Repo {
  int id;
  String nodeId;
  String name;
  String fullName;
  String? description;

  Repo({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.fullName,
    this.description,
  });

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
}
