import 'package:json_annotation/json_annotation.dart';

part 'preview_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PreviewDto {
  final String url;
  final String name;

  PreviewDto({
    required this.url,
    required this.name,
  });
  factory PreviewDto.fromJson(Map<String, dynamic> json) =>
      _$PreviewDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewDtoToJson(this);
}
