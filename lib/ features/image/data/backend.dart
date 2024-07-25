// import 'dart:convert';
// import 'dart:io';
//
// import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
// import 'package:image_picker/image_picker.dart';
//
// Future<void> uploadImageToYandexCloud() async {
//   // Получаем изображение
//   final picker = ImagePicker();
//   final imageFromGallery = await picker.pickImage(source: ImageSource.gallery);
//   if (imageFromGallery == null) return;
//
//   // ### Получаем ссылку для загрузки
//
//   final name = imageFromGallery.name;
//
//   final uri = Uri.https(
//     'cloud-api.yandex.net',
//     'v1/disk/resources/upload',
//     {
//       "path": name,
//     },
//   );
//
//   /// Токен авторизации, можно получить по ссылке https://yandex.ru/dev/disk/poligon/ выполнив вход
//   const token = '';
//
//   final response = await http.get(
//     uri,
//     headers: {
//       HttpHeaders.authorizationHeader: 'OAuth $token',
//     },
//   );
//
//   final body = response.body;
//   final json = jsonDecode(body);
//   json as Map<String, dynamic>;
//   final linkToUpload = json['href'] as String;
//
//   // ### Загружаем файл на сервер
//
//   final dio = Dio();
//   final file = File(imageFromGallery.path);
//   final formData = FormData.fromMap({
//     'file': await MultipartFile.fromFile(file.path),
//   });
//   dio.put(linkToUpload, data: formData);
// }
