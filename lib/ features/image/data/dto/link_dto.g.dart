// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinkDto _$LinkDtoFromJson(Map<String, dynamic> json) => LinkDto(
      url: json['url'] as String,
      method: json['method'] as String,
      templated: json['templated'] as bool?,
    );

Map<String, dynamic> _$LinkDtoToJson(LinkDto instance) => <String, dynamic>{
      'url': instance.url,
      'method': instance.method,
      'templated': instance.templated,
    };
