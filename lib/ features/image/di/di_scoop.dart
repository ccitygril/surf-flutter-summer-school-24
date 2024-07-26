import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/client/image_client.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/interseptor/auth_interseptor.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/repositiry/image_repository.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/domain/use_case/image_use_case.dart';
import 'package:surf_flutter_summer_school_24/%20features/theme%20/domain/theme_controller.dart';
import 'package:surf_flutter_summer_school_24/%20features/theme%20/repository/theme_repository.dart';
import 'package:surf_flutter_summer_school_24/%20features/theme%20/storage/theme_storage/theme_storage.dart';

Dio buildDio() {
  final dio = Dio();
  const token = 'y0_AgAAAAAxl2AVAADLWwAAAAELdnHiAAAwEIq0IKFANIKj7dzr51Pj_2Il8g';

  dio.options.baseUrl = 'https://cloud-api.yandex.net';
  dio.interceptors.add(AuthInterceptor(token: token));

  return dio;
}

abstract interface class IAppScope {
  Dio get dio;

  SharedPreferences get sharedPreferences;
}

final class AppScope implements IAppScope {
  final Dio dio;
  final SharedPreferences sharedPreferences;

  AppScope({
    required this.dio,
    required this.sharedPreferences,
  });

  static Future<AppScope> createAppScope() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final dio = buildDio();

    return AppScope(
      dio: dio,
      sharedPreferences: sharedPreferences,
    );
  }
}

final class ImageScope implements IImageScope {
  @override
  final ImageUseCase imageUseCase;

  factory ImageScope.create(BuildContext context) {
    final appScope = context.read<IAppScope>();

    return ImageScope(
      ImageUseCase(
        repository: ImageRepository(
          client: ImageClient(appScope.dio),
          dio: appScope.dio,
        ),
      ),
    );
  }

  ImageScope(this.imageUseCase);
}

abstract interface class IImageScope {
  ImageUseCase get imageUseCase;
}

final class ThemeScope implements IThemeScope {
  @override
  final ThemeController themeController;

  ThemeScope(this.themeController);

  factory ThemeScope.create(BuildContext context) {
    final appScope = context.read<IAppScope>();

    return ThemeScope(
      ThemeController(
        themeRepository: ThemeRepository(
          themeStorage: ThemeStorage(
            prefs: appScope.sharedPreferences,
          ),
        ),
      ),
    );
  }
}

abstract interface class IThemeScope {
  ThemeController get themeController;
}
