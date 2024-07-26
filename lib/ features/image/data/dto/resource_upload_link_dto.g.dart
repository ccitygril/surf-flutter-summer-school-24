// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_upload_link_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceUploadLinkDto _$ResourceUploadLinkDtoFromJson(
        Map<String, dynamic> json) =>
    ResourceUploadLinkDto(
      operationId: json['operation_id'] as String,
      href: json['href'] as String,
      method: json['method'] as String,
      templated: json['templated'] as bool?,
    );

Map<String, dynamic> _$ResourceUploadLinkDtoToJson(
        ResourceUploadLinkDto instance) =>
    <String, dynamic>{
      'operation_id': instance.operationId,
      'href': instance.href,
      'method': instance.method,
      'templated': instance.templated,
    };
