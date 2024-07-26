import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/image_entity.dart';

class PageCarousel extends StatefulWidget {
  const PageCarousel({
    super.key,
    required this.images,
    required this.controller,
  });

  final PageController controller;
  final List<ImageEntity> images;

  @override
  State<PageCarousel> createState() => _PageCarouselState();
}

class _PageCarouselState extends State<PageCarousel> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constrains) {
          return PageView.builder(
            // physics: const PageScrollPhysics(),
            scrollBehavior: ScrollConfiguration.of(context).copyWith(
              scrollbars: false,
              overscroll: false,
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            padEnds: true,
            pageSnapping: true,
            itemCount: widget.images.length,
            controller: widget.controller,
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.hardEdge,
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: widget.controller,
                builder: (context, child) {
                  final page = _getPage();
                  final t = page - index;
                  const double enlargeFactor = 0.3;
                  final num distortionRatio =
                      (1 - (t.abs() * enlargeFactor)).clamp(0.0, 1.0);
                  final distortionValue =
                      Curves.easeOut.transform(distortionRatio.toDouble());

                  final height = constrains.maxHeight * distortionValue;

                  return Center(
                    child: Transform.scale(
                      scale: distortionValue,
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(
                          sigmaX: (1 - distortionValue) * 30,
                          sigmaY: (1 - distortionValue) * 30,
                        ),
                        child: Container(
                          height: height,
                          child: child!,
                        ),
                      ),
                    ),
                  );
                },
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Hero(
                      tag: widget.images[index].url,
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: double.infinity,
                        imageUrl: widget.images[index].url,
                      ),
                    ),
                  ),
                ),
              );
            },
            // separatorBuilder: (context, index) => const SizedBox(width: 10),
          );
        },
      ),
    );
  }

  double _getPage() {
    final initial = widget.controller.initialPage.toDouble();
    if (widget.controller.positions.isEmpty) {
      return initial;
    }

    if (!widget.controller.position.hasPixels) {
      return initial;
    }
    if (!widget.controller.position.hasContentDimensions) {
      return initial;
    }

    return widget.controller.page ?? initial;
  }
}
