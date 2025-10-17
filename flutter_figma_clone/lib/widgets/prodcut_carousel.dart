import 'package:flutter/material.dart';

class ProductCarousel extends StatefulWidget {
  const ProductCarousel({super.key});

  @override
  State<ProductCarousel> createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  final images = ["assets/product/1.png", "assets/product/2.png", "assets/product/1.png", "assets/product/2.png"];

  late final PageController _pageController;
  double _page = 0.0; // 0..(images.length-1)

  static const double barWidth = 140; // length of the short scrollbar
  static const double barHeight = 6;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.91);
    _pageController.addListener(() {
      setState(() => _page = _pageController.page ?? 0.0);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/4,
      child: Stack(
        children: [
          // ---- Carousel ----
          PageView.builder(
            controller: _pageController,
            padEnds: false,
            itemCount: images.length,
            itemBuilder: (_, i) => Image.asset(
              images[i],
              fit: BoxFit.contain,
              alignment: Alignment.centerLeft, // first image hugs left
              filterQuality: FilterQuality.high,
            ),
          ),

          // ---- Docked short scrollbar (moves left ↔ right with page) ----
          Positioned.fill(
            child: LayoutBuilder(
              builder: (_, c) {
                // t = 0 on first page (left), 1 on last page (right)
                final maxIndex = (images.length - 1).clamp(1, 999);
                final t = (_page / maxIndex).clamp(0.0, 1.0);
                final double left = t * (c.maxWidth - barWidth);

                return Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeOut,
                      left: left,                 // flush to left/right edge
                      bottom: 1,                  // sits at bottom of image
                      child: Container(
                        width: barWidth,
                        height: barHeight,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(999),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
