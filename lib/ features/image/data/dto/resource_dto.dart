import 'package:json_annotation/json_annotation.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/dto/preview_dto.dart';

import 'resoursces_list_dto.dart';

part 'resource_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ResourceDto {
  @JsonKey(name: "_embedded")
  final ResourscesListDto? embedded;
  final String? resourceId;
  final String? file;
  final String? type;
  final String? path;
  final String? name;
  final String created;
  final String modified;
  final List<PreviewDto>? sizes;

  factory ResourceDto.fromJson(Map<String, dynamic> json) =>
      _$ResourceDtoFromJson(json);

  ResourceDto({
    this.embedded,
    this.sizes,
    this.resourceId,
    this.file,
    this.type,
    this.path,
    this.name,
    required this.created,
    required this.modified,
  });

  Map<String, dynamic> toJson() => _$ResourceDtoToJson(this);
}
