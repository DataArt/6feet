import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tracking/presentation/page/PageFactory.dart';

import '../PageContract.dart';

abstract class RouteHandler {
  Route onboarding();

  Route map();

  Route handleRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageContract.onboarding:
        return onboarding();
      case PageContract.map:
        return map();
      default:
        throw Exception("Unsupported path => ${settings.name}");
    }
  }
}

class MaterialRouteHandler extends RouteHandler {
  PageFactory _pageFactory;

  MaterialRouteHandler(this._pageFactory);

  @override
  Route onboarding() {
    return MaterialPageRoute(builder: (_) => _pageFactory.onboardingPage());
  }

  @override
  Route map() {
    return MaterialPageRoute(builder: (_) => _pageFactory.mapPage());
  }
}
