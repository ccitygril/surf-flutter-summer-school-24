import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/widget/custom_app_bar.dart';

import 'image_grid_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ImageGridPage module
class ImageGridPageWidget extends ElementaryWidget<IImageGridPageWidgetModel> {
  const ImageGridPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultImageGridPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IImageGridPageWidgetModel wm) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.images,
        builder: (context, data) {
          return RefreshIndicator(
            onRefresh: wm.refresh,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              padding: const EdgeInsets.all(8),
              itemCount: data?.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2.0,
                    vertical: 3,
                  ),
                  child: GestureDetector(
                    onTap: () => wm.openCarousel(index),
                    child: Hero(
                      tag: data?[index].url ?? index,
                      child: CachedNetworkImage(
                        imageUrl: data?[index].url ?? '',
                        fit: BoxFit.cover,
                        errorWidget: (context, _, __) => const _ImageShimmer(),
                        placeholder: (context, url) => const _ImageShimmer(),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _ImageShimmer extends StatelessWidget {
  const _ImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black26,
      highlightColor: Colors.white24,
      child: Container(
        width: 116,
        height: 116,
        color: Colors.black26,
      ),
    );
  }
}
