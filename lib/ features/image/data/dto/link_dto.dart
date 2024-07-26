import 'package:json_annotation/json_annotation.dart';

part 'link_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LinkDto {
  final String url;
  final String method;
  final bool? templated;

  factory LinkDto.fromJson(Map<String, dynamic> json) =>
      _$LinkDtoFromJson(json);

  LinkDto({required this.url, required this.method, required this.templated});

  Map<String, dynamic> toJson() => _$LinkDtoToJson(this);
}
