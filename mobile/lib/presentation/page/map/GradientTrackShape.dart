import 'package:flutter/material.dart';

class GradientTrackShape extends SliderTrackShape {
  const GradientTrackShape({ this.disabledThumbGapWidth = 2.0 });
  final double disabledThumbGapWidth;

  @override
  Rect getPreferredRect({
    RenderBox parentBox,
    Offset offset = Offset.zero,
    SliderThemeData sliderTheme,
    bool isEnabled,
    bool isDiscrete,
  }) {
    final double overlayWidth = sliderTheme.overlayShape.getPreferredSize(isEnabled, isDiscrete).width;
    final double trackHeight = sliderTheme.trackHeight;
    assert(overlayWidth >= 0);
    assert(trackHeight >= 0);
    assert(parentBox.size.width >= overlayWidth);
    assert(parentBox.size.height >= trackHeight);

    final double trackLeft = offset.dx + overlayWidth / 2;
    final double trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width - overlayWidth;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }


  @override
  void paint(
      PaintingContext context,
      Offset offset, {
        RenderBox parentBox,
        SliderThemeData sliderTheme,
        Animation<double> enableAnimation,
        TextDirection textDirection,
        Offset thumbCenter,
        bool isDiscrete,
        bool isEnabled,
      }) {
    if (sliderTheme.trackHeight == 0) {
      return;
    }

    LinearGradient activeGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      stops: [0, 1],
      colors: [
        Color(0xFF0067e5),
        Color(0xFF4db9e2),
      ],
    );

    final Rect arcRect = Rect.fromCircle(center: offset, radius: parentBox.size.width/2);
    final Paint activePaint = new Paint()..shader = activeGradient.createShader(arcRect);

    LinearGradient inactiveGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      stops: [0, 1],
      colors: [
        Color(0xFF8a8a8a),
        Color(0xFFb5b5b5),
      ],
    );

    final Rect arcRect2 = Rect.fromCircle(center: offset, radius: parentBox.size.width/2);
    final Paint inactivePaint = new Paint()..shader = inactiveGradient.createShader(arcRect2);

    Paint leftTrackPaint;
    Paint rightTrackPaint;
    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
        break;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
        break;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );
    final Rect leftTrackSegment = Rect.fromLTRB(trackRect.left, trackRect.top, thumbCenter.dx, trackRect.bottom);

    context.canvas.drawRect(leftTrackSegment, leftTrackPaint);
    final Rect rightTrackSegment = Rect.fromLTRB(thumbCenter.dx, trackRect.top, trackRect.right, trackRect.bottom);
    context.canvas.drawRect(rightTrackSegment, rightTrackPaint);
  }
}
