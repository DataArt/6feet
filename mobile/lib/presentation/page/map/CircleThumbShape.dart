import 'package:flutter/material.dart';

class CircleThumbShape extends SliderComponentShape {
  final double thumbRadius;
  final int min;
  final int max;

  const CircleThumbShape({
    @required this.thumbRadius,
    @required this.min,
    @required this.max,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint (
      PaintingContext context,
      Offset center,
      {Animation<double> activationAnimation,
        Animation<double> enableAnimation,
        bool isDiscrete,
        TextPainter labelPainter,
        RenderBox parentBox,
        SliderThemeData sliderTheme,
        TextDirection textDirection,
        double value,
        double textScaleFactor,
        Size sizeWithOverflow}
      ) {
    final Canvas canvas = context.canvas;

    LinearGradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0, 1],
      colors: [
        Color(0xFFf5a623),
        Color(0xFFf88200),
      ],
    );

    final Rect arcRect = Rect.fromCircle(center: center, radius: thumbRadius);
    final Paint paint = new Paint()..shader = gradient.createShader(arcRect);

    canvas.drawCircle(center, thumbRadius, paint);
  }

  String getValue(double value) {
    return ((max * value).round()).toString();
  }
}
