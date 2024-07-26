import 'package:surf_flutter_summer_school_24/%20features/image/data/dto/resource_dto.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/dto/resource_upload_link_dto.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/dto/resoursces_list_dto.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/image_entity.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_upload_link.dart';

ImageEntity mapDtoToImage(ResourceDto dto) {
  return ImageEntity(
    id: dto.resourceId ?? '',
    url: dto.file ?? '',
    createdAt: dto.created,
  );
}

ResourceUploadLink mapDtoToResourceUploadLink(ResourceUploadLinkDto dto) {
  return ResourceUploadLink(
      operationId: dto.operationId, href: dto.href, method: dto.method);
}

ResourscesList mapToResourscesList(ResourscesListDto dto) {
  return ResourscesList(
    items: dto.items.map(mapDtoToImage).toList(),
  );
}
