import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/domain/use_case/image_use_case.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/image_entity.dart';

// TODO: cover with documentation
/// Default Elementary model for ImageGridPage module
class ImageGridPageModel extends ElementaryModel {
  final ImageUseCase imageRepository;

  ImageGridPageModel({required this.imageRepository, super.errorHandler});

  Future<List<ImageEntity>> getImage() async {
    return imageRepository.getResourcesList();
  }
}
