import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/image_entity.dart';
import 'package:surf_flutter_summer_school_24/ui/pages/image_carusel_page/image_carusel_page.dart';

import 'image_grid_page_model.dart';
import 'image_grid_page_widget.dart';

abstract interface class IImageGridPageWidgetModel implements IWidgetModel {
  EntityValueListenable<List<ImageEntity>> get images;

  void openCarousel(int index);

  Future<void> refresh();
}

ImageGridPageWidgetModel defaultImageGridPageWidgetModelFactory(
  BuildContext context,
) {
  // final appScope = context.read<IAppScope>();
  return ImageGridPageWidgetModel(
    ImageGridPageModel(
      imageRepository: context.read(), /*scope.repository*/
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for ImageGridPageWidget
class ImageGridPageWidgetModel
    extends WidgetModel<ImageGridPageWidget, ImageGridPageModel>
    implements IImageGridPageWidgetModel {
  @override
  final EntityStateNotifier<List<ImageEntity>> images = EntityStateNotifier();

  ImageGridPageWidgetModel(super.model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _loadData();
  }

  @override
  Future<void> refresh() async {
    await _loadData();
  }

  Future<void> _loadData() async {
    final previousData = images.value.data;
    try {
      final res = await model.getImage();
      images.content(res);
    } on Exception catch (e) {
      images.error(e, previousData);
      rethrow;
    }
  }

  @override
  void reassemble() {
    super.reassemble();
    _loadData();
  }

  @override
  void openCarousel(int index) {
    final images = this.images.value.data;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageCaruselPageWidget(
          initialIndex: index,
          images: images ?? [],
        ),
      ),
    );
  }
}
