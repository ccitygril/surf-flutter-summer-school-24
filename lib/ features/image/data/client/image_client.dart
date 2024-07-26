import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/client/urls.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/dto/link_dto.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/dto/resource_dto.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/dto/resource_upload_link_dto.dart';

part 'image_client.g.dart';

@RestApi()
abstract class ImageClient {
  factory ImageClient(Dio dio, {String baseUrl}) = _ImageClient;

  @GET(Urls.upload)
  Future<ResourceUploadLinkDto> getImageUploadPath(
    @Query('path') String path,
  );

  @PUT(Urls.upload)
  Future<ResourceUploadLinkDto> putImage();

  @POST(Urls.upload)
  Future<LinkDto> postImage();

  @GET(Urls.resources)
  Future<ResourceDto> getResourcesList([
    @Query('path') String path = '/',
  ]);

  @GET(Urls.download)
  Future<LinkDto> getImageDownloadPath();
}
