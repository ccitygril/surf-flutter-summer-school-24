import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/domain/repository/image_repository_interface.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';

// TODO: cover with documentation
/// Default Elementary model for ImageGridPage module
class ImageGridPageModel extends ElementaryModel {
  final IImageRepository imageRepository;

  ImageGridPageModel({required this.imageRepository, super.errorHandler});

  Future<ResourscesList?> getImage() async {
    return imageRepository.getPhotos();
  }
}
