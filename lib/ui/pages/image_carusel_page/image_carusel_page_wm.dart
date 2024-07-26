import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';

import 'image_carusel_page_model.dart';
import 'image_carusel_page_widget.dart';

abstract interface class IImageCaruselPageWidgetModel implements IWidgetModel {
  EntityValueListenable<ResourscesList?> get images;

  PageController get pageController;

  int get activeIndex;

  void goBack();
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
  final EntityStateNotifier<ResourscesList?> _images = EntityStateNotifier();

  ImageCaruselPageWidgetModel(super.model);

  @override
  // TODO: implement image
  EntityValueListenable<ResourscesList?> get images => _images;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _loadData();
  }

  Future<void> _loadData() async {
    final previousData = await model.getImage();
    _images.content(previousData);
  }

  @override
  void goBack() {
    Navigator.pop(context);
  }

  @override
  late final pageController = PageController(
    initialPage: widget.initialIndex,
  );

  @override
  int get activeIndex {
    if (pageController.positions.isEmpty) {
      return widget.initialIndex;
    }

    if (!pageController.position.hasPixels) {
      return widget.initialIndex;
    }

    return pageController.page?.round() ?? widget.initialIndex;
  }
}
