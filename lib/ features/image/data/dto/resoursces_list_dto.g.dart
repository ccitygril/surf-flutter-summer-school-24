// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resoursces_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourscesListDto _$ResourscesListDtoFromJson(Map<String, dynamic> json) =>
    ResourscesListDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => ResourceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ResourscesListDtoToJson(ResourscesListDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'type': instance.type,
      'limit': instance.limit,
      'offset': instance.offset,
    };
