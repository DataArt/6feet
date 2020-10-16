import 'package:tracking/domain/bloc/factory/BlocFactory.dart';
import 'package:tracking/presentation/application/ApplicationFactory.dart';
import 'package:tracking/presentation/application/MaterialApplicationFactory.dart';
import 'package:tracking/presentation/page/MaterialPageFactory.dart';
import 'package:tracking/presentation/page/PageFactory.dart';
import 'package:tracking/presentation/router/RouteHandler.dart';
import 'package:tracking/presentation/router/RouteHandlerFactory.dart';

import 'PresentationFactory.dart';

class MaterialPresentationFactory implements PresentationFactory {
  final BlocFactory _blocFactory;

  MaterialPresentationFactory(this._blocFactory);

  @override
  ApplicationFactory applicationFactory() =>
      MaterialApplicationFactory(routeHandler());

  @override
  PageFactory pageFactory() => MaterialPageFactory(_blocFactory);

  @override
  RouteHandler routeHandler() => RouteHandlerFactory.create(pageFactory());
}
