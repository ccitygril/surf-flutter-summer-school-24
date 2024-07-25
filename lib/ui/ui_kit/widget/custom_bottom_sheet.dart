import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/%20features/theme%20/di/theme_inherited.dart';
import 'package:surf_flutter_summer_school_24/ui/pages/image_upload_page/image_upload_page.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/typography/typograhy.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 161,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _SettingItemWidget(
                icons: Icons.sunny,
                titel: 'Тема',
                onTap: () {
                  ThemeInherited.of(context).switchThemeMode();
                },
              ),
              _SettingItemWidget(
                icons: Icons.upload_file_outlined,
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
            padding: const EdgeInsets.all(8.0),
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
