import 'package:flutter/material.dart';
import 'package:tracking/di/DomainFactory.dart';
import 'package:tracking/presentation/application/ApplicationFactory.dart';
import 'package:tracking/presentation/resources/AppStrings.dart';

import 'di/MaterialPresentationFactory.dart';
import 'domain/bloc/factory/BlocFactory.dart';
import 'domain/service/source/SourceFactory.dart';
import 'presentation/page/PageFactory.dart';

final _domainFactory = DomainFactory(SourceFactory());
final _blocFactory = BlocFactory(_domainFactory);
final _presentationFactory = MaterialPresentationFactory(_blocFactory);

void main() => runApp(
  SocialDistancingApp(
        _presentationFactory.pageFactory(),
        _presentationFactory.applicationFactory(),
      ),
    );

class SocialDistancingApp extends StatelessWidget {
  final PageFactory _pageFactory;
  final ApplicationFactory _applicationFactory;

  SocialDistancingApp(this._pageFactory, this._applicationFactory);

  @override
  Widget build(BuildContext context) {
    return _applicationFactory.create(
        AppStrings.SOCIAL_DISTANCING_APP, _pageFactory.onboardingPage());
  }
}
