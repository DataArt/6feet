import 'package:tracking/domain/service/LocationPermissionService.dart';
import 'package:tracking/domain/service/LocationServiceAvailabilityService.dart';
import 'package:tracking/domain/service/MapService.dart';
import 'package:tracking/domain/service/source/SourceFactory.dart';

class DomainFactory {
  DomainFactory(SourceFactory sourceFactory);

  LocationPermissionService locationPermissionService() =>
      LocationPermissionService();

  LocationServiceAvailabilityService locationServiceAvailabilityService() =>
      LocationServiceAvailabilityService();

  MapService mapService() => MapService();
}