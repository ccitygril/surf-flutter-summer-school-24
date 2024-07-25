import 'package:surf_flutter_summer_school_24/%20features/image/domain/repository/image_repository_interface.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/image_entity.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';

class MockImageRepository implements IImageRepository {
  @override
  Future<ResourscesList> getPhotos() async {
    return const ResourscesList(
      items: [
        ImageEntity(
            id: "1",
            url:
                'https://img.freepik.com/free-photo/delicious-street-food-fest_23-2151543468.jpg?w=1380&t=st=1721638800~exp=1721639400~hmac=8ea5b2dd04c52a23b9147c2c9350da432088ba54c5e7e436038f293ba1fe1c42'),
        ImageEntity(
            id: "2",
            url:
                'https://img.freepik.com/free-photo/view-of-wild-elk-in-nature_23-2151017808.jpg?w=996&t=st=1721638817~exp=1721639417~hmac=ec22522cf4a97fbe20c938da310fd29702f466fc53bab45254bab05f00770b51'),
        ImageEntity(
            id: "3",
            url:
                'https://img.freepik.com/free-photo/view-of-wild-elk-in-nature_23-2151017808.jpg?w=996&t=st=1721638817~exp=1721639417~hmac=ec22522cf4a97fbe20c938da310fd29702f466fc53bab45254bab05f00770b51'),
      ],
    );
  }
}
