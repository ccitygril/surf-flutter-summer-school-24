import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/repositiry/mock_image_repository.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';

// TODO: cover with documentation
/// Default Elementary model for ImageCaruselPage module
class ImageCaruselPageModel extends ElementaryModel {
  final MockImageRepository imageRepository;

  ImageCaruselPageModel({super.errorHandler, required this.imageRepository});

  Future<ResourscesList?> getImage() async {
    return imageRepository.getPhotos();
  }
}
