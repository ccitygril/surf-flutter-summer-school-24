import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/widget/carusel_widget.dart';

import '../../../ features/image/entity/resoursces_list.dart';
import 'image_carusel_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ImageCaruselPage module
class ImageCaruselPageWidget
    extends ElementaryWidget<IImageCaruselPageWidgetModel> {
  const ImageCaruselPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultImageCaruselPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IImageCaruselPageWidgetModel wm) {
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
        centerTitle: true,
        actions: [
          Row(
            children: [Text(wm.images.value.data?.items[0].createdAt ?? '')],
          ),
        ],
      ),
      body: PageCarousel(
        resourscesList: wm.images.value.data ?? const ResourscesList(items: []),
      ),
    );
  }
}
