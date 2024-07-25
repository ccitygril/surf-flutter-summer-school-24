import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/repositiry/image_repository.dart';

// TODO: cover with documentation
/// Default Elementary model for ImageUploadPage module
class ImageUploadPageModel extends ElementaryModel {
  final ImageRepository imageRepository;
  ImageUploadPageModel({
    super.errorHandler,
    required this.imageRepository,
  });
}
