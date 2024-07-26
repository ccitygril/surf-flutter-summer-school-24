import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/image_entity.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/color/app_color.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/typography/typograhy.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/widget/carusel_widget.dart';

import 'image_carusel_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ImageCaruselPage module
class ImageCaruselPageWidget
    extends ElementaryWidget<IImageCaruselPageWidgetModel> {
  const ImageCaruselPageWidget({
    this.initialIndex = 0,
    this.images = const [],
    Key? key,
    WidgetModelFactory wmFactory = defaultImageCaruselPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final int initialIndex;
  final List<ImageEntity> images;

  @override
  Widget build(IImageCaruselPageWidgetModel wm) {
    final String isoDate = images[wm.activeIndex].createdAt ?? '';
    DateTime dateTime = DateTime.parse(isoDate);
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
        title: ListenableBuilder(
            listenable: wm.pageController,
            builder: (context, _) {
              return Text(
                DateFormat('dd.MM.yyyy').format(dateTime),
                style: AppTypography.slime20,
              );
            }),
        actions: [
          ListenableBuilder(
            listenable: wm.pageController,
            builder: (context, _) {
              return Row(
                children: [
                  Text(
                    "${wm.activeIndex + 1}",
                    style: AppTypography.bold18,
                  ),
                  Text(
                    "/${images.length}",
                    style: AppTypography.bold18
                        .copyWith(color: LightColorPalette.grayFB),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              );
            },
          ),
        ],
      ),
      body: PageCarousel(
        controller: wm.pageController,
        images: images,
      ),
    );
  }
}
