import 'package:freezed_annotation/freezed_annotation.dart';

part 'resoursces_upload_link.freezed.dart';

@freezed
class ResourceUploadLink with _$ResourceUploadLink {
  const factory ResourceUploadLink({
    required String operationId,
    required String href,
    required String method,
    bool? templated,
  }) = _ResourceUploadLink;
}
