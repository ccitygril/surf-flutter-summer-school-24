import 'package:json_annotation/json_annotation.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/dto/preview_dto.dart';

import 'resoursces_list_dto.dart';

part 'resource_dto.g.dart';

@JsonSerializable()
class ResourceDto {
  @JsonKey(name: "_embedded")
  final ResourscesListDto embedded;
  final String resourceId;
  final String file;
  final String type;
  final String path;
  final String name;
  final String created;
  final String modified;
  final List<PreviewDto>? sizes;

  factory ResourceDto.fromJson(Map<String, dynamic> json) =>
      _$ResourceDtoFromJson(json);

  ResourceDto({
    required this.embedded,
    this.sizes,
    required this.resourceId,
    required this.file,
    required this.type,
    required this.path,
    required this.name,
    required this.created,
    required this.modified,
  });

  Map<String, dynamic> toJson() => _$ResourceDtoToJson(this);
}
