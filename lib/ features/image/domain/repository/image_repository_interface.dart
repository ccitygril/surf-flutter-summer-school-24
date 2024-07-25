import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';

abstract interface class IImageRepository {
  Future<ResourscesList> getPhotos();
}
