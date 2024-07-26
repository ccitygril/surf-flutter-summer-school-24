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
            itemCount: widget.images.length,
            controller: widget.controller,
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.hardEdge,
            itemBuilder: (context, index) {
              return SizedBox(
                width: constrains.maxWidth * 0.9,
                child: AnimatedBuilder(
                  animation: widget.controller,
                  builder: (context, _) {
                    final page = _getPage();
                    final t = page - index;
                    final isLeaving = t <= 0;
                    final isIntro = t > 0 && t <= 1;

                    final size = Tween(
                      begin: 0.9,
                      end: 0.85,
                    ).transform(t.abs());

                    print('i: $index t $t');

                    final transform = Matrix4.identity();
                    transform.scale(size, size, 1);
                    if (isLeaving) {
                      final tween = Tween(begin: 0, end: -60.0);
                      final offset = tween.transform(t.abs());
                      transform.translate(offset.toDouble());
                    }

                    if (isIntro) {
                      final tween = Tween(begin: 0, end: 60.0);
                      final offset = tween.transform(t.abs());
                      transform.translate(offset.toDouble());
                    }

                    return Transform(
                      transform: transform,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Hero(
                            tag: widget.images[index].url,
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: widget.images[index].url,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
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
