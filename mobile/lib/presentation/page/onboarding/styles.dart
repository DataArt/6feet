import 'dart:ui';

import 'package:flutter/material.dart';

final onboardingTitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 26.0,
  height: 1.2,
);

final onboardingSubtitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
  height: 1.2,
);

final backgroundGradientDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, 1],
    colors: [
      Colors.white,
      Color(0xFFbde8f8),
    ],
  ),
);

final solidBackgroundDecoration = BoxDecoration(
    color: Color(0xFF373b8d),
);