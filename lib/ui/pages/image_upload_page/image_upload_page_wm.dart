import 'dart:io';

import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import 'image_upload_page_model.dart';
import 'image_upload_page_widget.dart';

abstract interface class IImageUploadPageWidgetModel implements IWidgetModel {
  void goBack();
  Future<void> getImageFromCamera();
  Future<void> getImageFromGallery();
}

ImageUploadPageWidgetModel defaultImageUploadPageWidgetModelFactory(
    BuildContext context) {
  return ImageUploadPageWidgetModel(
    ImageUploadPageModel(
      imageRepository: context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for ImageUploadPageWidget
class ImageUploadPageWidgetModel
    extends WidgetModel<ImageUploadPageWidget, ImageUploadPageModel>
    implements IImageUploadPageWidgetModel {
  ImageUploadPageWidgetModel(ImageUploadPageModel model) : super(model);

  @override
  void goBack() {
    Navigator.pop(context);
  }

  @override
  Future<void> getImageFromCamera() async {
    File? _image;
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
    }
  }

  @override
  Future<void> getImageFromGallery() async {
    File? _image;
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
    }
  }
}
