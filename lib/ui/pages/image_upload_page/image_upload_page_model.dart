import 'dart:io';

import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/repositiry/image_repository.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/domain/use_case/image_use_case.dart';

// TODO: cover with documentation
/// Default Elementary model for ImageUploadPage module
class ImageUploadPageModel extends ElementaryModel {
  final ImageRepository imageRepository;
  final ImageUseCase imageUseCase;

  ImageUploadPageModel({
    super.errorHandler,
    required this.imageRepository,
    required this.imageUseCase,
  });

  Future<void> uploadFile(File file) async {
    imageUseCase.uploadFile(file);
  }
}
