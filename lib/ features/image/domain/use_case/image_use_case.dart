import 'dart:io';

import 'package:surf_flutter_summer_school_24/%20features/image/domain/repository/image_repository_interface.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/image_entity.dart';

class ImageUseCase {
  final IImageRepository repository;

  ImageUseCase({required this.repository});

  Future<List<ImageEntity>> getResourcesList() async {
    return repository.getResourcesList();
  }

  Future<void> uploadFile(String name, File file) async {
    final link = await repository.getImageUploadPath(name, file);
    repository.uploadFile(link.href, file);
  }
}
