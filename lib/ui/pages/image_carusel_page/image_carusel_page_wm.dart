import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_summer_school_24/entity/image_entity.dart';

import 'image_carusel_page_model.dart';
import 'image_carusel_page_widget.dart';

abstract interface class IImageCaruselPageWidgetModel implements IWidgetModel {
  EntityValueListenable<List<ImageEntity>?> get images;
}

ImageCaruselPageWidgetModel defaultImageCaruselPageWidgetModelFactory(
    BuildContext context) {
  return ImageCaruselPageWidgetModel(
    ImageCaruselPageModel(
      imageRepository: context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for ImageCaruselPageWidget
class ImageCaruselPageWidgetModel
    extends WidgetModel<ImageCaruselPageWidget, ImageCaruselPageModel>
    implements IImageCaruselPageWidgetModel {
  final EntityStateNotifier<List<ImageEntity>?> _images = EntityStateNotifier();

  ImageCaruselPageWidgetModel(super.model);

  @override
  // TODO: implement image
  EntityValueListenable<List<ImageEntity>?> get images => _images;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _loadData();
  }

  Future<void> _loadData() async {
    final previousData = await model.getImage();
    _images.content(previousData);
  }
}
