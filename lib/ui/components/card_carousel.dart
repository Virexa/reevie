import 'dart:ui';

import 'package:flutter/material.dart';

class MovieCarousel extends StatefulWidget {
  final int itemCount;
  final Widget Function(int index, bool isOnCenter) builder;
  final double viewportFraction;
  final double scaleFactor;
  final double maxTilt;
  final double sidePeek;
  final double minOpacity;
  final double height;
  final void Function(int index)? onTap;
  final Duration scrollDuration;
  final Curve scrollCurve;

  const MovieCarousel({
    super.key,
    required this.itemCount,
    required this.builder,
    this.viewportFraction = 0.6,
    this.scaleFactor = 0.8,
    this.maxTilt = 0.2,
    this.sidePeek = 0.2,
    this.minOpacity = 0.5,
    this.height = 300,
    this.scrollDuration = const Duration(milliseconds: 400),
    this.scrollCurve = Curves.easeOut,
    this.onTap,
  });

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late final PageController _pageController;
  late int _initialPage;
  double _page = 0.0;

  int _realIndex(int virtualIndex) => virtualIndex % widget.itemCount;

  @override
  void initState() {
    super.initState();
    // infinite scroll offset
    _initialPage = widget.itemCount * 1000;
    _pageController =
        PageController(
          viewportFraction: widget.viewportFraction,
          initialPage: _initialPage,
        )..addListener(() {
          setState(() {
            _page = _pageController.page ?? _initialPage.toDouble();
          });
        });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildCard(int virtualIndex, double width) {
    final realIdx = _realIndex(virtualIndex);
    final delta = virtualIndex - _page;
    final scale = lerpDouble(1.0, widget.scaleFactor, delta.abs())!;
    final tilt = delta * widget.maxTilt;
    final shiftX = delta * width * widget.sidePeek;
    final opacity = lerpDouble(1.0, widget.minOpacity, delta.abs())!;
    final isCenter = delta.abs() < 0.5;

    return Align(
      alignment: Alignment.center,
      child: Opacity(
        opacity: opacity,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(shiftX)
            ..scale(scale, scale)
            ..rotateZ(tilt),
          child: GestureDetector(
            onTap: () {
              if (!isCenter) {
                _pageController.animateToPage(
                  virtualIndex.toInt(),
                  duration: widget.scrollDuration,
                  curve: widget.scrollCurve,
                );
              }
              widget.onTap?.call(realIdx);
            },
            child: SizedBox(
              width: width * widget.viewportFraction,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: widget.builder(realIdx, isCenter),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // current virtual center
    final centerVirtual = _page.round();
    final leftVirtual = centerVirtual - 1;
    final rightVirtual = centerVirtual + 1;

    return SizedBox(
      height: widget.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: _pageController,
            itemBuilder: (_, idx) => const SizedBox.shrink(),
          ),
          // left behind
          IgnorePointer(child: _buildCard(leftVirtual, width)),
          // right behind
          IgnorePointer(child: _buildCard(rightVirtual, width)),
          // center on top
          IgnorePointer(child: _buildCard(centerVirtual, width)),
        ],
      ),
    );
  }
}
