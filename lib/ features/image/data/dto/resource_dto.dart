import 'package:json_annotation/json_annotation.dart';

import 'preview_dto.dart';
import 'resoursces_list_dto.dart';

part 'resource_dto.g.dart';

@JsonSerializable()
class ResourceDto {
  @JsonKey(name: "_embedded")
  final ResourscesListDto embedded;
  final List<PreviewDto> sizes;

  factory ResourceDto.fromJson(Map<String, dynamic> json) =>
      _$ResourceDtoFromJson(json);

  ResourceDto({required this.embedded, required this.sizes});

  Map<String, dynamic> toJson() => _$ResourceDtoToJson(this);
}
