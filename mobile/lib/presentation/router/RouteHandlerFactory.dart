import 'package:tracking/presentation/page/PageFactory.dart';

import 'RouteHandler.dart';

class RouteHandlerFactory {
  RouteHandlerFactory._internal();

  static RouteHandler create(PageFactory pageFactory) {
    return MaterialRouteHandler(pageFactory);
  }
}
