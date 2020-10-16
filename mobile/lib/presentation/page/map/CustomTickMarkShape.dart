import 'package:flutter/material.dart';

class CustomTickMarkShape extends SliderTickMarkShape {
  const CustomTickMarkShape(this.value);

  final double value;

  @override
  Size getPreferredSize({SliderThemeData sliderTheme, bool isEnabled}) {
    return const Size(1.0, 6.0);
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    Offset thumbCenter,
    RenderBox parentBox,
    SliderThemeData sliderTheme,
    Animation<double> enableAnimation,
    bool isEnabled,
    TextDirection textDirection,
  }) {
    Paint paint = Paint();
    switch (textDirection) {
      case TextDirection.ltr:
        final bool isTickMarkRightOfThumb = offset.dx > thumbCenter.dx;
        paint
          ..color =
              isTickMarkRightOfThumb ? Color(0xFFcacaca) : Color(0xFF005bcf);
        break;
      case TextDirection.rtl:
        final bool isTickMarkLeftOfThumb = offset.dx < thumbCenter.dx;
        paint
          ..color =
              isTickMarkLeftOfThumb ? Color(0xFF005bcf) : Color(0xFFcacaca);
        break;
    }

    context.canvas
        .drawRect(Rect.fromLTWH(offset.dx, offset.dy, 1.0, 6.0), paint);
  }
}
