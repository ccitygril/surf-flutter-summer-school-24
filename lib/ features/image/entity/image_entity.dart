import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_entity.freezed.dart';

@freezed
class ImageEntity with _$ImageEntity {
  const factory ImageEntity({
    required String id,
    required String url,
    String? createdAt,
  }) = _ImageEntity;
}
