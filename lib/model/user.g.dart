// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return $checkedNew('User', json, () {
    final val = User(
      login: $checkedConvert(json, 'login', (v) => v as String),
      id: $checkedConvert(json, 'id', (v) => v as int),
      nodeId: $checkedConvert(json, 'node_id', (v) => v as String),
      avatarUrl: $checkedConvert(json, 'avatar_url', (v) => v as String),
      url: $checkedConvert(json, 'url', (v) => v as String),
      bio: $checkedConvert(json, 'bio', (v) => v as String),
      createdAt: $checkedConvert(json, 'created_at', (v) => v as String),
      updatedAt: $checkedConvert(json, 'updated_at', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'nodeId': 'node_id',
    'avatarUrl': 'avatar_url',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at'
  });
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.nodeId,
      'avatar_url': instance.avatarUrl,
      'url': instance.url,
      'bio': instance.bio,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'name': instance.name,
    };
