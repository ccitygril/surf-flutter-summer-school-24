import 'dart:io';

import 'package:surf_flutter_summer_school_24/%20features/image/entity/image_entity.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_upload_link.dart';

abstract interface class IImageRepository {
  Future<ResourscesList> getPhotos();

  Future<void> uploadFile(String linkToUpload, File file);

  Future<ResourceUploadLink> getImageUploadPath(String mame, File imageFile);

  Future<List<ImageEntity>> getResourcesList();
}
