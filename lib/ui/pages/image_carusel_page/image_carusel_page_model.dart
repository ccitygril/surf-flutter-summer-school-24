import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/domain/repository/image_repository_interface.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';

// TODO: cover with documentation
/// Default Elementary model for ImageCaruselPage module
class ImageCaruselPageModel extends ElementaryModel {
  final IImageRepository imageRepository;

  ImageCaruselPageModel({super.errorHandler, required this.imageRepository});

  Future<ResourscesList?> getImage() async {
    return imageRepository.getPhotos();
  }
}
