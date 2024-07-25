import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'image_carusel_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ImageCaruselPage module
class ImageCaruselPageWidget extends ElementaryWidget<IImageCaruselPageWidgetModel> {
  const ImageCaruselPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultImageCaruselPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IImageCaruselPageWidgetModel wm) {
    return Container();
  }
}
