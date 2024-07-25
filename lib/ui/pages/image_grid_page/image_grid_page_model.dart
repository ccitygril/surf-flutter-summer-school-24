import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/repositiry/mock_image_repository.dart';
import 'package:surf_flutter_summer_school_24/entity/image_entity.dart';

// TODO: cover with documentation
/// Default Elementary model for ImageGridPage module
class ImageGridPageModel extends ElementaryModel {
  final MockImageRepository imageRepository;

  ImageGridPageModel({required this.imageRepository, super.errorHandler});

  Future<List<ImageEntity>?> getImage() async {
    return imageRepository.getPhotos();
  }
}
