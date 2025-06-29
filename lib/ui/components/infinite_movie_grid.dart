import 'package:flutter/material.dart';

class InfiniteMovieGrid extends StatelessWidget {
  final List<String> imageUrls;
  final int rowCount;
  final double speed;

  const InfiniteMovieGrid({
    super.key,
    required this.imageUrls,
    this.rowCount = 5,
    this.speed = 40,
  }) : assert(imageUrls.length > 0),
       assert(rowCount > 0),
       assert(speed > 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        rowCount,
        (rowIndex) => Expanded(
          child: InfiniteScrollRow(
            imageUrls: imageUrls,
            rowIndex: rowIndex,
            rowCount: rowCount,
            speed: speed,
          ),
        ),
      ),
    );
  }
}

class InfiniteScrollRow extends StatefulWidget {
  final List<String> imageUrls;
  final int rowIndex;
  final int rowCount;
  final double speed;

  const InfiniteScrollRow({
    super.key,
    required this.imageUrls,
    required this.rowIndex,
    required this.rowCount,
    required this.speed,
  });

  @override
  State<InfiniteScrollRow> createState() => _InfiniteScrollRowState();
}

class _InfiniteScrollRowState extends State<InfiniteScrollRow> {
  late final ScrollController _controller;
  late final List<String> _sequence;
  late final double _itemWidth;
  late final double _spacing;
  late final double _maxScroll;

  @override
  void initState() {
    super.initState();
    _itemWidth = 120;
    _spacing = 8;

    // Determine chunk size and sequence for this row
    final total = widget.imageUrls.length;
    final chunkSize = (total + widget.rowCount - 1) ~/ widget.rowCount;
    final start = (widget.rowIndex * chunkSize) % total;
    _sequence = List.generate(
      chunkSize,
      (i) => widget.imageUrls[(start + i) % total],
    );

    // Compute scrollable distance
    _maxScroll = _sequence.length * (_itemWidth + _spacing);
    _controller = ScrollController(
      initialScrollOffset: widget.rowIndex.isEven ? _maxScroll : 0,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollLoop());
  }

  Future<void> _scrollLoop() async {
    while (mounted) {
      final from = widget.rowIndex.isEven ? _maxScroll : 0.0;
      final to = widget.rowIndex.isEven ? 0.0 : _maxScroll;
      final duration = Duration(
        milliseconds: ((_maxScroll / widget.speed) * 1000).round(),
      );
      _controller.jumpTo(from);
      await _controller.animateTo(to, duration: duration, curve: Curves.linear);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      reverse: false,
      itemCount: _sequence.length * 2,
      itemBuilder: (context, index) {
        final url = _sequence[index % _sequence.length];
        return Padding(
          padding: EdgeInsets.only(right: _spacing),
          child: Image.network(
            url,
            width: _itemWidth,
            fit: BoxFit.contain,
            errorBuilder: (_, __, ___) => SizedBox(
              width: _itemWidth,
              child: Center(child: Icon(Icons.broken_image)),
            ),
          ),
        );
      },
    );
  }
}
