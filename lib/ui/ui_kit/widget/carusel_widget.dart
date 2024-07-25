import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/%20features/image/entity/resoursces_list.dart';

class PageCarousel extends StatefulWidget {
  const PageCarousel({
    super.key,
    required this.resourscesList,
  });

  final ResourscesList resourscesList;
  @override
  State<PageCarousel> createState() => _PageCarouselState();
}

class _PageCarouselState extends State<PageCarousel> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constrains) {
          return ListView.separated(
            // physics: const PageScrollPhysics(),
            itemCount: widget.resourscesList.items.length,
            controller: _controller,
            scrollDirection: Axis.horizontal,
            cacheExtent: 500,
            clipBehavior: Clip.hardEdge,
            itemBuilder: (context, index) {
              return SizedBox(
                width: constrains.maxWidth * 0.9,
                child: AnimatedBuilder(
                  animation: _controller,
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
                      transform.translate(offset);
                    }

                    if (isIntro) {
                      final tween = Tween(begin: 0, end: 60.0);
                      final offset = tween.transform(t.abs());
                      transform.translate(offset);
                    }

                    return Transform(
                      transform: transform,
                      alignment: Alignment.center,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                widget.resourscesList.items[index].url),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          );
        },
      ),
    );
  }

  double _getPage() {
    final initial = _controller.initialPage.toDouble();
    if (_controller.positions.isEmpty) {
      return initial;
    }

    if (!_controller.position.hasPixels) {
      return initial;
    }
    if (!_controller.position.hasContentDimensions) {
      return initial;
    }

    return _controller.page ?? initial;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
