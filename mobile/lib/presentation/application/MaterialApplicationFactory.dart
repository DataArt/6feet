import 'package:flutter/material.dart';
import 'package:tracking/presentation/router/RouteHandler.dart';

import 'ApplicationFactory.dart';

class MaterialApplicationFactory implements ApplicationFactory {
  RouteHandler _routeHandler;

  MaterialApplicationFactory(this._routeHandler);

  @override
  Widget create(String title, Widget home) => MaterialApp(
      title: title,
      onGenerateRoute: (settings) {
        return _routeHandler.handleRoute(settings);
      },
      home: home);
}
