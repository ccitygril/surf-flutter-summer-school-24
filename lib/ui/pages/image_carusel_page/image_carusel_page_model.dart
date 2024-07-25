import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/repositiry/mock_image_repository.dart';
import 'package:surf_flutter_summer_school_24/entity/image_entity.dart';

// TODO: cover with documentation
/// Default Elementary model for ImageCaruselPage module
class ImageCaruselPageModel extends ElementaryModel {
  final MockImageRepository imageRepository;

  ImageCaruselPageModel({super.errorHandler, required this.imageRepository});

  Future<List<ImageEntity>?> getImage() async {
    return imageRepository.getPhotos();
  }
}
