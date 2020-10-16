import 'package:tracking/presentation/application/ApplicationFactory.dart';
import 'package:tracking/presentation/page/PageFactory.dart';
import 'package:tracking/presentation/router/RouteHandler.dart';

abstract class PresentationFactory {
  ApplicationFactory applicationFactory();

  PageFactory pageFactory();

  // RouteFactory routeFactory();

  RouteHandler routeHandler();
}
