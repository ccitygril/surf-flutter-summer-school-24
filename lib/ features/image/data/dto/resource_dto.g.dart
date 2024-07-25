// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceDto _$ResourceDtoFromJson(Map<String, dynamic> json) => ResourceDto(
      embedded:
          ResourscesListDto.fromJson(json['_embedded'] as Map<String, dynamic>),
      sizes: (json['sizes'] as List<dynamic>?)
          ?.map((e) => PreviewDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceId: json['resourceId'] as String,
      file: json['file'] as String,
      type: json['type'] as String,
      path: json['path'] as String,
      name: json['name'] as String,
      created: json['created'] as String,
      modified: json['modified'] as String,
    );

Map<String, dynamic> _$ResourceDtoToJson(ResourceDto instance) =>
    <String, dynamic>{
      '_embedded': instance.embedded,
      'resourceId': instance.resourceId,
      'file': instance.file,
      'type': instance.type,
      'path': instance.path,
      'name': instance.name,
      'created': instance.created,
      'modified': instance.modified,
      'sizes': instance.sizes,
    };
