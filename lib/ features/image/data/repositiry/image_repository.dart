import 'dart:io';

import 'package:dio/dio.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/client/image_client.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/mapper/mapper.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/domain/repository/image_repository_interface.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/image_entity.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_upload_link.dart';

class ImageRepository implements IImageRepository {
  final ImageClient client;
  final Dio dio;

  ImageRepository({required this.client, required this.dio});

  @override
  Future<ResourceUploadLink> getImageUploadPath(
    String name,
    File imageFile,
  ) async {
    try {
      final link = await client.getImageUploadPath(name);
      return mapDtoToResourceUploadLink(link);
    } on DioException catch (error, stackTrace) {
      Error.throwWithStackTrace(
        Exception('Failed to get image: ${error.message} $stackTrace'),
        stackTrace,
      );
    }
  }

  @override
  Future<List<ImageEntity>> getResourcesList() async {
    try {
      final resource = await client.getResourcesList();

      final resources = resource.embedded?.items ?? [];

      return resources
          .where((r) => r.type == 'file')
          .map(mapDtoToImage)
          .toList();
    } on DioException catch (error, stackTrace) {
      Error.throwWithStackTrace(
        Exception('Failed to get image: ${error.message} $stackTrace'),
        stackTrace,
      );
    }
  }

  @override
  Future<void> uploadFile(String linkToUpload, File file) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(file.path),
      });
      dio.put(linkToUpload, data: formData);
    } on DioException catch (error, stackTrace) {
      Error.throwWithStackTrace(
        Exception('Failed to get image: ${error.message} $stackTrace'),
        stackTrace,
      );
    }
  }

  @override
  Future<ResourscesList> getPhotos() async {
    // // TODO: implement getPhotos
    throw UnimplementedError();
  }
}
