// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceDto _$ResourceDtoFromJson(Map<String, dynamic> json) => ResourceDto(
      embedded:
          ResourscesListDto.fromJson(json['_embedded'] as Map<String, dynamic>),
      sizes: (json['sizes'] as List<dynamic>)
          .map((e) => PreviewDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResourceDtoToJson(ResourceDto instance) =>
    <String, dynamic>{
      '_embedded': instance.embedded,
      'sizes': instance.sizes,
    };
