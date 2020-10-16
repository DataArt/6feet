import 'package:tracking/di/DomainFactory.dart';
import 'package:tracking/domain/bloc/factory/OnboardingBlocFactory.dart';
import 'package:tracking/domain/bloc/factory/MapBlocFactory.dart';
import 'package:tracking/domain/bloc/map/MapBloc.dart';
import 'package:tracking/domain/bloc/onboarding/OnboardingBloc.dart';

class BlocFactory implements OnboardingBlocFactory, MapBlocFactory {
  final DomainFactory _domainFactory;

  BlocFactory(this._domainFactory);

  @override
  OnboardingBloc createOnboardingBloc() =>
      OnboardingBloc(_domainFactory.locationPermissionService());

  @override
  MapBloc createMapBloc() => MapBloc(
      _domainFactory.mapService(),
      _domainFactory.locationPermissionService(),
      _domainFactory.locationServiceAvailabilityService());
}
