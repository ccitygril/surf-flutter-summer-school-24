import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/widget/custom_button.dart';

import 'image_upload_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ImageUploadPage module
class ImageUploadPageWidget
    extends ElementaryWidget<IImageUploadPageWidgetModel> {
  const ImageUploadPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultImageUploadPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IImageUploadPageWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            wm.goBack();
          },
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                title: "Сделать фото",
                onTap: () {
                  wm.getImageFromCamera();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                onTap: () {
                  wm.getImageFromGallery();
                },
                title: 'Загрузить из галлереи',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
