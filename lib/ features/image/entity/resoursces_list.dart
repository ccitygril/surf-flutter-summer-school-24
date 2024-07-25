import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/image_entity.dart';

part 'resoursces_list.freezed.dart';

@freezed
class ResourscesList with _$ResourscesList {
  const factory ResourscesList({
    required List<ImageEntity> items,
    String? type,
    int? limit,
    int? offset,
  }) = _ResourscesList;
}
