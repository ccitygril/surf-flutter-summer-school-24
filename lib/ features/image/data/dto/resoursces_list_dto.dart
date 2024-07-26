import 'package:json_annotation/json_annotation.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/dto/resource_dto.dart';

part 'resoursces_list_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ResourscesListDto {
  final List<ResourceDto> items;
  final String? type;
  final int? limit;
  final int? offset;

  ResourscesListDto({
    required this.items,
    this.type,
    this.limit,
    this.offset,
  });
  factory ResourscesListDto.fromJson(Map<String, dynamic> json) =>
      _$ResourscesListDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ResourscesListDtoToJson(this);
}
