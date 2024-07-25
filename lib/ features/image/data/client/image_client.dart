import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/client/urls.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/dto/link_dto.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/dto/resource_upload_link_dto.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/dto/resoursces_list_dto.dart';

part 'image_client.g.dart';

@RestApi(baseUrl: 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/')
abstract class ImageClient {
  factory ImageClient(Dio dio, {String baseUrl}) = _ImageClient;

  @GET(Urls.upload)
  Future<ResourceUploadLinkDto> getImageUploadPath();

  @PUT(Urls.upload)
  Future<ResourceUploadLinkDto> putImage();

  @POST(Urls.upload)
  Future<LinkDto> postImage();

  @GET(Urls.resourcesList)
  Future<ResourscesListDto> getResourcesList();

  @GET(Urls.download)
  Future<LinkDto> getImageDownloadPath();
}
