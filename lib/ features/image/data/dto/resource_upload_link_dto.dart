import 'package:json_annotation/json_annotation.dart';

part 'resource_upload_link_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ResourceUploadLinkDto {
  final String operationId;
  final String href;
  final String method;
  final bool? templated;

  ResourceUploadLinkDto({
    required this.operationId,
    required this.href,
    required this.method,
    this.templated,
  });

  factory ResourceUploadLinkDto.fromJson(Map<String, dynamic> json) =>
      _$ResourceUploadLinkDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ResourceUploadLinkDtoToJson(this);
}
