import 'dart:io';

import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';

import '../../entity/resoursces_upload_link.dart';

abstract interface class IImageRepository {
  Future<ResourscesList> getPhotos();

  Future<void> uploadFile(String linkToUpload, File file);

  Future<ResourceUploadLink> getImageUploadPath(File imageFile);

  Future<ResourscesList> getResourcesList();
}
