import 'dart:io';

import 'package:surf_flutter_summer_school_24/%20features/image/data/repositiry/image_repository.dart';

class ImageUseCase {
  final ImageRepository repository;

  ImageUseCase({required this.repository});

  Future<void> uploadFile(File file) async {
    final link = await repository.getImageUploadPath(file);
    repository.uploadFile(link.href, file);
  }
}
