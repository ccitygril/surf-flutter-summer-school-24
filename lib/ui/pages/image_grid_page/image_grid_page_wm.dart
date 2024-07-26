import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/domain/repository/image_repository_interface.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';
import 'package:surf_flutter_summer_school_24/ui/pages/image_carusel_page/image_carusel_page.dart';

import 'image_grid_page_model.dart';
import 'image_grid_page_widget.dart';

abstract interface class IImageGridPageWidgetModel implements IWidgetModel {
  EntityValueListenable<ResourscesList?> get images;
  void openCarousel();
}

ImageGridPageWidgetModel defaultImageGridPageWidgetModelFactory(
  BuildContext context,
) {
  // final appScope = context.read<IAppScope>();
  return ImageGridPageWidgetModel(
    ImageGridPageModel(
      imageRepository: context.read<IImageRepository>(), /*scope.repository*/
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for ImageGridPageWidget
class ImageGridPageWidgetModel
    extends WidgetModel<ImageGridPageWidget, ImageGridPageModel>
    implements IImageGridPageWidgetModel {
  final EntityStateNotifier<ResourscesList?> _images = EntityStateNotifier();

  ImageGridPageWidgetModel(super.model);

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

    // try {
    //   final res = await model.loadData();
    //   _exampleState.content(res);
    // } on Exception catch (e) {
    //   _images.error(e, previousData);
    // }
  }

  @override
  void openCarousel() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ImageCaruselPageWidget(),
      ),
    );
  }
}
