import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/%20features/theme%20/di/theme_inherited.dart';
import 'package:surf_flutter_summer_school_24/ui/pages/image_upload_page/image_upload_page.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/color/app_color.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/typography/typograhy.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    String currentTheme;
    final theme = Theme.of(context);
    bool whatTheme = theme.brightness == Brightness.light;
    whatTheme ? currentTheme = 'Светлая' : currentTheme = 'Темная';
    return SizedBox(
      height: 161,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: _SettingItemWidget(
                      icons: Icons.wb_sunny_outlined,
                      titel: 'Тема',
                      onTap: () {
                        ThemeInherited.of(context).switchThemeMode();
                      },
                    ),
                  ),
                  Expanded(
                    child: Text(
                      currentTheme,
                      style: AppTypography.normal18
                          .copyWith(color: LightColorPalette.grayAA),
                    ),
                  )
                ],
              ),
              _SettingItemWidget(
                icons: Icons.cloud_upload_outlined,
                titel: 'Загрузить фотографию',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ImageUploadPageWidget(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingItemWidget extends StatelessWidget {
  final IconData? icons;
  final String titel;
  final VoidCallback onTap;

  const _SettingItemWidget(
      {super.key,
      required this.icons,
      required this.titel,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(
              icons,
              // color: AppColor.gray88,
            ),
          ),
          Text(
            titel,
            style: AppTypography.normal18,
          )
        ],
      ),
    );
  }
}
