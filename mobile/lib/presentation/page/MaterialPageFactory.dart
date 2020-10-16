import 'package:flutter/widgets.dart';
import 'package:tracking/domain/bloc/factory/BlocFactory.dart';
import 'package:tracking/presentation/page/map/MaterialMapPage.dart';
import 'package:tracking/presentation/page/onboarding/MaterialOnboardingPage.dart';

import 'PageFactory.dart';

class MaterialPageFactory implements PageFactory {
  final BlocFactory _blocFactory;

  MaterialPageFactory(this._blocFactory);

  @override
  Widget onboardingPage() =>
      MaterialOnboardingPage(_blocFactory.createOnboardingBloc());

  @override
  Widget mapPage() => MaterialMapPage(_blocFactory.createMapBloc());
}
