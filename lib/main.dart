import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/client/image_client.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/interseptor/auth_interseptor.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/data/repositiry/image_repository.dart';
import 'package:surf_flutter_summer_school_24/%20features/theme%20/di/theme_inherited.dart';
import 'package:surf_flutter_summer_school_24/%20features/theme%20/domain/theme_controller.dart';
import 'package:surf_flutter_summer_school_24/%20features/theme%20/repository/theme_repository.dart';
import 'package:surf_flutter_summer_school_24/%20features/theme%20/storage/theme_storage/theme_storage.dart';
import 'package:surf_flutter_summer_school_24/%20features/theme%20/theme_data.dart';
import 'package:surf_flutter_summer_school_24/%20features/theme%20/ui/theme_builder.dart';
import 'package:surf_flutter_summer_school_24/ui/pages/image_grid_page/image_grid_page.dart';

void main() async {
  final dio = Dio();
  final token = '';

  dio.interceptors.add(AuthInterceptor(token: token));

  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final themeStorage = ThemeStorage(
    prefs: prefs,
  );
  final themeRepository = ThemeRepository(
    themeStorage: themeStorage,
  );
  final themeController = ThemeController(
    themeRepository: themeRepository,
  );
  runApp(MainApp(
    themeController: themeController,
    dio: dio,
  ));
}

class MainApp extends StatelessWidget {
  final ThemeController themeController;
  final Dio dio;

  const MainApp({
    super.key,
    required this.themeController,
    required this.dio,
  });

  @override
  Widget build(BuildContext context) {
    ImageClient client = ImageClient(dio);
    return ThemeInherited(
      themeController: themeController,
      child: ThemeBuilder(
        builder: (_, themeMode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppThemeData.lightTheme,
            darkTheme: AppThemeData.darkTheme,
            themeMode: themeMode,
            home: Provider<ImageRepository>(
              create: (_) => ImageRepository(client: client, dio: dio),
              builder: (context, child) {
                return const ImageGridPageWidget();
              },
            ),
            // Provider<MockImageRepository>(
            //   create: (_) => MockImageRepository(),
            //   builder: (context, child) {
            //     return const ImageGridPageWidget();
            //   },
            // ),
          );
        },
      ),
    );
  }
}
