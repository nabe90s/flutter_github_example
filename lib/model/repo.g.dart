// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Repo _$RepoFromJson(Map<String, dynamic> json) {
  return $checkedNew('Repo', json, () {
    final val = Repo(
      id: $checkedConvert(json, 'id', (v) => v as int),
      nodeId: $checkedConvert(json, 'node_id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      fullName: $checkedConvert(json, 'full_name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'nodeId': 'node_id', 'fullName': 'full_name'});
}

Map<String, dynamic> _$RepoToJson(Repo instance) => <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'full_name': instance.fullName,
      'description': instance.description,
    };
