import 'dart:io';

import 'package:dio/dio.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/client/image_client.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/mapper/mapper.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_upload_link.dart';

class ImageRepository {
  final ImageClient client;

  ImageRepository({required this.client});

  final dio = Dio();

  Future<ResourceUploadLink> getImageUploadPath(File imageFile) async {
    try {
      final link = await client.getImageUploadPath();
      return mapDtoToResourceUploadLink(link);
    } on DioException catch (error, stackTrace) {
      throw Exception('Failed to get image: ${error.message} ${stackTrace}');
    }
  }

  Future<ResourscesList> getResourcesList() async {
    try {
      final link = await client.getResourcesList();
      return mapToResourscesList(link);
    } on DioException catch (error) {
      throw Exception('Failed to get image: ${error.message}');
    }
  }

  Future<void>? uploadFile(String linkToUpload, File file) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(file.path),
    });
    dio.put(linkToUpload, data: formData);
  }
}
